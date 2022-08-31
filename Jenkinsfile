pipeline {
    agent { 
        docker{ image "docker:dind"}
     }

    stages {
        stage('Build') {
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
                  'Deploying....'
            }
        }
    }
}