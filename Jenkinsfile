pipeline {
    agent { dockerfile true }
//     environment {
//         HOME = '.'
//     }
    stages {
        stage('Build') {
            steps {
              echo 'Building.....'
            //  sh 'npm install -g'
            }
        }
        stage('Validate_Test') {
            steps {
                echo 'Testing....'
                sh 'npm run test'
            }
        }
        stage('Deploy') {
            steps {
                echo  'Deploying.....'
//                 sh 'mkdir ~/.npm-global'
//                 sh 'npm config set prefix "~/.npm-global"'
//                 sh 'export PATH=~/.npm-global/bin:$PATH'
              //  sh 'NPM_CONFIG_PREFIX=~/.npm-global'
            //    sh 'source ~/.bash_profile'
            //    sh 'npm install -g jshint'
            //    sh 'npm install -g --acceptSuiteCloudSDKLicense @oracle/suitecloud-cli'
                sh 'suitecloud project:adddependencies'
            }
        }
    }
}
