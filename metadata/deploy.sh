#!/usr/bin/env bash
set -o errexit
set -o nounset
set -o pipefail
if [[ "${TRACE-0}" == "1" ]]; then set -o xtrace; fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
METADATA_DIR="${SCRIPT_DIR}/lms"

PENGUINCTL_APIURL="${PENGUINCTL_APIURL:-https://penguin-spring.test/api/v1}"
PENGUINCTL_APITOKEN="${PENGUINCTL_APITOKEN:-47f6c9c6-f6e4-4e54-ba63-c3f387ff76b9|oKxR3Lx2k78kKm2x3HECDqAU2slFBcYyXaSFQNRy}"
PENGUIN_USEDOCKER="${PENGUIN_USEDOCKER:-true}"

export PENGUINCTL_APIURL
export PENGUINCTL_APITOKEN
export PENGUIN_USEDOCKER

ci-utils() {
    if [[ "${PENGUIN_USEDOCKER:-true}" != "false" ]]; then
        docker run --rm -i -v "$(pwd)":"$(pwd)" badouralix/curl-jq "$@"
    else
        $@
    fi
}

penguinctl-docker() {
    echo "penguinctl version $(docker run --rm ghcr.io/spring-academy/penguinctl:latest --version)"
    docker run --rm -v "$(pwd)":"$(pwd)" ghcr.io/spring-academy/penguinctl:latest --url="${PENGUINCTL_APIURL}" --token="${PENGUINCTL_APITOKEN}" $@
}

penguinctl-local() {
    echo "penguinctl version $(penguinctl --version)"
    penguinctl --url="${PENGUINCTL_APIURL}" --token="${PENGUINCTL_APITOKEN}" $@
}

penguinctlcmd() {
    if [[ "${PENGUIN_USEDOCKER:-true}" != "false" ]]; then
        penguinctl-docker "$@"
    else
        penguinctl-local "$@"
    fi
}

deploy-pages() {
    echo "=== Applying pages"
    for pageDir in "${METADATA_DIR}"/pages/*; do
        envsubst < "${pageDir}/content.template.md" > "${pageDir}/content.md"
        echo "=== penguinctl apply page -f ${pageDir}/page.json"
        penguinctlcmd apply page -f "${pageDir}/page.json"
        rm "${pageDir}/content.md"
    done
}

deploy-courses() {
    GIT_STATUS="$(git status | ci-utils jq -R -s '.' | sed 's:^.\(.*\).$:\1:' )"
    export GIT_STATUS
    export GITHUB_REF_NAME="${GITHUB_REF_NAME:-$(git branch --show-current)}"
    export GITHUB_SHA="${GITHUB_SHA:-$GIT_STATUS}"
    export GITHUB_ACTOR="${GITHUB_ACTOR:-${USER}@local}"
    DEBUG_DATE=$(date)
    export DEBUG_DATE
    echo "=== Deploying courses"
    for courseDir in "${METADATA_DIR}"/courses/*; do
        echo "=== Deploying ${courseDir}"
        envsubst < "${courseDir}/course.template.json" > "${courseDir}/course.json"
        penguinctlcmd apply course -f "${courseDir}/course.json"
        rm "${courseDir}/course.json"
    done
}

"$@"