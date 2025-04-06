## Download Lab Zip File

1.  Download the **[lab codebase zip file](https://github.com/spring-academy/spring-pro-code/releases/download/core-spring-release-1.18.1/core-spring-labfiles.zip)**.

2.  Once you have downloaded the file, unzip it under
    a directory of your choice.
    The unzipped directory `core-spring-labfiles/lab`
    contains the lab projects.

## Install Required Software

Install the following software if they are not installed already
on your machine.

1.  Java 11:

    - [Oracle Java 11](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html)
    - [Open JDK Installations](https://openjdk.java.net/install/)

1.  REST client

    - [curl](https://curl.haxx.se/download.html) or
    - [Postman](https://www.getpostman.com/apps)

## Build the Projects

1.  Build the projects under `core-spring-labfiles/lab`
    directory. This will download and install
    required dependencies to local repository.

    Windows:

    ```bash
    mvnw clean install
    ```

    MacOSX or Linux:

    ```bash
    chmod 755 mvnw
    ./mvnw clean install
    ```

1.  If you experience any build failure, check firewalls or proxy
    settings in the `<Home-Directory>/.m2/settings.xml` file.

## Choose an IDE

While the lab projects can be built and run without an IDE,
usage of a mainstream Java IDE is strongly encouraged.

The course assumes one of the following, although you may pick an
alternate one with feature parity:

- [Spring Tools 4 (STS)](https://spring.io/tools)
- [JetBrains IntelliJ](https://www.jetbrains.com/idea)

The Spring Tools 4 (STS) is a free IDE built on the Eclipse Platform
with additional plugins to support Spring, Aspect Oriented Programming
and the Tanzu Application Service deployment platform.

## Import Projects Into Your IDE

1.  Import the projects in `core-spring-labfiles/lab` into your IDE.
    You can import them as either Maven or Gradle projects.

    - For STS, you can perform "Import" from the `lab` directory,
      which will import the projects underneath it.

    - For IntelliJ, you can perform "Import Projects"
      via the parent `pom.xml` or `build.gradle`, and IntelliJ will
      automatically set them up as a multi-module project.

1.  Verify that the projects are imported correctly.

    - STS:
      ![STS](https://raw.githubusercontent.com/spring-academy/spring-academy-assets/main/courses/course-spring-professional/sts-with-imported-projects.png)

    - IntelliJ:
      ![STS](https://raw.githubusercontent.com/spring-academy/spring-academy-assets/main/courses/course-spring-professional/intellij-with-imported-projects.png)

1.  Review the [_Using TODO Tasks_ article](/spring-dev-tools-configuring-todos).

## Troubleshooting

After importing the lab projects, your IDE may report errors,
typically related to project dependencies.
You can resolve these issues using the following techniques:

- For STS:
  - Select all projects, right-click, Maven, Update Projects.
  - Clean all selected projects
  - Close & Open all projects
