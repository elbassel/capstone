pipeline {
    agent any
    stages {
//         stage('Linting') {
//             steps {
//                 sh 'npm i'
//                 sh 'npm run lint'
//             }
//         }
        stage('Build Image') {
            steps {
                sh './run_docker.sh'
            }
        }
        stage('Check node modules') {
            steps {
                sh 'ls'
                sh '''
                    ls /capstone/node_modules
                '''
            }
        }
        stage('Upload image') {
            steps {
                sh './upload_docker.sh'
            }
        }
    }
}
