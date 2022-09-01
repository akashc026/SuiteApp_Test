pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
              sh 'sudo chown -R 501:20 "/.npm"'
              sh 'npm cache clean --force'
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
