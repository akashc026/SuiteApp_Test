pipeline {
    agent { dockerfile true }
    environment {
        HOME = '.'
    }
    stages {
        stage('Build') {
            steps {
              echo 'Building.....'
              //sh 'npm ci'
            }
        }
        stage('Validate_Test') {
            steps {
                echo 'Testing....'
               // sh 'npm run test'
            }
        }
        stage('Deploy') {
            steps {
                echo  'Deploying.....'
                sh 'npm install -g --acceptSuiteCloudSDKLicense @oracle/suitecloud-cli'
                sh 'suitecloud project:adddependencies'
            }
        }
    }
}
