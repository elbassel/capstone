pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo hello world'
                sh '''
                    echo "Multiline shellworks too"
                    ls -lah
                '''
            }
        }
//         stage('Linting') {
//             steps {
//                 sh 'npm i'
//                 sh 'npm run lint'
//             }
//         }
        stage('Build Image') {
            steps {
                sh '''
                    TAG=capstone
                    docker build --tag=$TAG .

                    docker image ls
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
