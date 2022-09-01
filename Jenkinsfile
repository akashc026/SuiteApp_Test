pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
               sh chown -R 501:20 "/.npm"
               sh 'npm ci'
            }
        }
        stage('Validate_Test') {
            steps {
                sh 'npm run test'
            }
        }
        stage('Deploy') {
            steps {
                echo  'Deploying.....'
            }
        }
    }
}
