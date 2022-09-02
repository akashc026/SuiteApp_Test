pipeline {
    agent { dockerfile true }
    environment {
        HOME = '.'
    }
    stages {
        stage('Build') {
            steps {
              echo 'Building.....'
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
                sh 'suitecloud project:adddependencies'
            }
        }
    }
}
