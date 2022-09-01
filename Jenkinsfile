pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
              sh 'npm cache clean --force'
              sh 'npm ci'
              sh 'chown -R 501:20 "/.npm"'
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
