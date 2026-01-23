# day2-jenkins-task01

## Project Overview
This project demonstrates a Jenkins multi-branch pipeline setup with three branches: `dev`, `test`, and `master`.

## Features
- **Multi-branch Pipeline**: Configured to handle development, testing, and production workflows
- **Branch-specific Stages**:
  - **Build**: Runs on all branches
  - **Test**: Executes on `test` and `master` branches
  - **Deploy Approval**: Manual approval required for `master` branch deployments
  - **Deploy**: Production deployment from `master` branch only
- **Webhook Integration**: Configured with Jenkins using ngrok for automated pipeline triggers

## Pipeline Structure
The Jenkinsfile defines a multi-branch pipeline with the following stages:
1. **Build** - Builds the application on all branches
2. **Test** - Runs tests on `test` and `master` branches
3. **Deploy Approval** - Requires manual approval for production deployments
4. **Deploy** - Deploys to production from `master` branch

## Setup
1. Configure Jenkins multi-branch pipeline
2. Set up ngrok for webhook integration
3. Configure webhook in your Git repository to trigger Jenkins builds

## Files
- `Jenkinsfile` - Pipeline definition
- `ngrok.yml` - Ngrok configuration for webhook setup 
