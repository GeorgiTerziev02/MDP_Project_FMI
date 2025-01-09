# Modern Devops Practices Assigment Project

This project is made for passing the MDP assigment project. The purpose of the assigment is to create CI and CD pipelines for already existing python application.

In the project there are two pipelines created:
- CI pipeline
- CD pipeline

## CI pipeline

The CI pipeline is runned as validation build for every for pull request made to the main branch.
The CI pipeline must succeed in order to introduce changes to the main branch - this requirement is created with branch protection rule for the main branch.
The purpose of this pipeline is to check style guides, if the project builds successfully, are there any vulnerabilities introduced with these changes and also other validations which are described below.

### Jobs

#### editorconfig
#### markdown
#### flake8
#### build-and-test
#### database-test
#### sonarqube
#### snyk


## CD pipeline

The CD pipeline is runned on every successful push to the main branch.
There are three main steps in this pipeline:
- Create docker image
- Publish the image to a DockerHub image repository
- Update the used image for the webservice hosted on Render.

### Jobs

#### build-image
#### publish-image
#### update-web-service
