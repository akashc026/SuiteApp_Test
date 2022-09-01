pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
              sh '-u npm ci'
              echo 'Building.....'
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
