pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                echo "Building on branch: ${env.BRANCH_NAME}"
            }
        }

        stage('Test') {
            when {
                anyOf {
                    branch 'test'
                    branch 'master'
                }
            }
            steps {
                echo "Running tests on ${env.BRANCH_NAME}"
            }
        }

        stage('Deploy Approval') {
            when {
                branch 'master'
            }
            steps {
                input message: 'Approve deployment to PROD?'
            }
        }

        stage('Deploy') {
            when {
                branch 'master'
            }
            steps {
                echo "Deploying from MASTER branch"
            }
        }
    }
}
