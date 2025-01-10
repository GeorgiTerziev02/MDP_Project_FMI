# Modern Devops Practices Assigment Project

This project is made for passing the MDP assigment project. The purpose of the assigment is to create CI and CD pipelines for already existing python application.

In the project there are two pipelines created:

- CI pipeline [![ci](https://github.com/GeorgiTerziev02/MDP_Project_FMI/actions/workflows/ci.yml/badge.svg)](https://github.com/GeorgiTerziev02/MDP_Project_FMI/actions/workflows/ci.yml)
- CD pipeline [![cd](https://github.com/GeorgiTerziev02/MDP_Project_FMI/actions/workflows/cd.yml/badge.svg)](https://github.com/GeorgiTerziev02/MDP_Project_FMI/actions/workflows/cd.yml)

## CI pipeline

The CI pipeline is runned as validation build for every for pull request made to the main branch.
The CI pipeline must succeed in order to introduce changes to the main branch - this requirement is created with branch protection rule for the main branch.
The purpose of this pipeline is to check style guides, if the project builds successfully, are there any vulnerabilities introduced with these changes and also other validations which are described below.

### Jobs

#### editorconfig

- Description: Checks if the code meets the rules defined in the **.editorconfig** file. Essential for ensuring that all files conform with the coding style guide
- Secrets: none
- Dependencies: none
- Continue on failure: no

#### markdown

- Description: Checks if the markdown files meet some default rules for formatting and styling and also the custom rules defined in the **.markdownlint-cli2.jsonc**.
- Secrets: none
- Dependencies: none
- Continue on failure: yes

#### flake8

- Description: Code quality checker for Python. Custom rules and exceptions can be defined in the **.flake8** file. Essential for writing good Python code.
- Secrets: none
- Dependencies: none
- Continue on failure: no

#### client-secrets

- Description: Tool for checking for leaked secrets/api-keys/passwords etc. Essential for the project security.
- Secrets: GITHUB_TOKEN
- Dependencies: none
- Continue on failure: no

#### build-and-test

- Description: Builds and tests the application. Essential for preventing build failures and ensuring all the tests pass with the new changes.
- Secrets: none
- Dependencies: editorconfig, markdown, flake8, client-secrets
- Continue on failure: no

#### database-test

- Description: Job for testing the database migrations in isolated environment. Ensures that the migrations apply correctly and there are no issues.
- Secrets: none
- Dependencies: build-and-test
- Continue on failure: no

#### sonarqube

- Description: Performs code quality analysis on the project. Allows defining custom rules for your quality gate. Good for identifying potential bugs, duplication, code smells, etc.
- Secrets: SONAR_TOKEN, SONAR_HOST_URL
- Dependencies: build-and-test
- Continue on failure: no

#### snyk

- Description: The last job of the pipeline. Scans the project dependencies for security vulnerabilities. As a result gives information on the potential vulnerabilities and recommendations for fixing them.
- Secrets: SNYK_TOKEN
- Dependencies: database-test, sonarqube
- Continue on failure: no

## CD pipeline

The CD pipeline is runned on every successful push to the main branch.
There are three main steps in this pipeline:

- Create docker image
- Publish the image to a DockerHub image repository
- Update the used image for the webservice hosted on Render.

### Steps

#### build-image

- Description: TODO
- Secrets: none
- Dependencies: none
- Continue on failure: no

#### publish-image

- Description: TODO
- Secrets: none
- Dependencies: none
- Continue on failure: no

#### update-web-service

- Description: TODO
- Secrets: none
- Dependencies: none
- Continue on failure: no
