pipeline {
    agent none

    stages {
        stage('Build') {
            agent { dockerfile true }
            steps {
                bat 'npm ci'
            }
        }
        stage('Validate_Test') {
            steps {
                bat 'npm run test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}