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

        stage('Upload image') {
            steps {
                sh './upload_docker.sh'
            }
        }
    }
}
