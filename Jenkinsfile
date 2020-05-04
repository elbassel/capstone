pipeline {
    environment {
      registry = "basselista/capstone"
      registryCredential = ‘dockerhub’
    }
    agent any
    stages {
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
