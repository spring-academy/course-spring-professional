#!make

.PHONY: deploy release

release:

deploy: deploy-pages deploy-courses

deploy-pages:
	metadata/deploy.sh deploy-pages

deploy-courses:
	metadata/deploy.sh deploy-courses

deploy-local: deploy