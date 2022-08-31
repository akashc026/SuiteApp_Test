pipeline {
    agent { 
        docker{ image "docker:dind"
                args '-v /var/run/docker.sock:/var/run/docker.sock'
            }
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
                echo  'Deploying....'
            }
        }
    }
}