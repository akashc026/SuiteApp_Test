pipeline {
    agent { 
        docker{ image "docker:dind"
                args '-v /usr/local/bin/docker:/usr/bin/docker'
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