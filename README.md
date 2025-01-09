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

- Description: TODO
- Secrets: none
- Dependencies: none
- Continue on failure: no

#### build-and-test

- Description: TODO
- Secrets: none
- Dependencies: none
- Continue on failure: no

#### database-test

- Description: TODO
- Secrets: none
- Dependencies: none
- Continue on failure: no

#### sonarqube

- Description: TODO
- Secrets: none
- Dependencies: none
- Continue on failure: no

#### snyk

- Description: TODO
- Secrets: none
- Dependencies: none
- Continue on failure: no

## CD pipeline

The CD pipeline is runned on every successful push to the main branch.
There are three main steps in this pipeline:
- Create docker image
- Publish the image to a DockerHub image repository
- Update the used image for the webservice hosted on Render.

### Jobs

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
