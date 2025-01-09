# Modern Devops Practices Assigment Project

This project is made for passing the MDP assigment project.

In the project there are two pipelines created:
- CI pipeline
- CD pipeline

## CI pipeline

The CI pipeline is runned as validation build for every for pull request made to the main branch. The purpose of this branch is to check style guides, if the project builds successfully, are there any vulnerabilities introduced with these changes and does validations which are described below.

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
The purpose of this branch is to create docker image, then publish it to the dockerhub image repository and as a final step to update the image url on the webservice hosted on Render.

### Jobs

#### build-image
#### publish-image
#### update-web-service
