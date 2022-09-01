pipeline {
    agent none

    stages {
        stage('Build') {
            agent { dockerfile true }
            environment {
                  HOME="."
            }
            steps {
               bat 'npm ci'
            }
        }
        stage('Validate_Test') {
            environment {
                  HOME="."
            }
            steps {
                bat 'npm run test'
            }
        }
        stage('Deploy') {
            steps {
                echo  'Deploying....'
            }
        }
    }
}