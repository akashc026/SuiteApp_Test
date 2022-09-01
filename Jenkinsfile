pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
              sh 'mkdir ~/.npm-global'
              sh 'cd .npm-global'
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
