pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
              echo 'Building.....'
              sh 'chown -R 900:900 "/.npm-global"'
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
