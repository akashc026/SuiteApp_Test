pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
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
