pipeline {
  environment {
    registry = "basselista/capstone"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Build app') {
       steps {
         sh 'npm i'
       }
    }
    stage('Linting') {
       steps {
         sh 'npm run linting'
       }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":latest"
        }
      }
    }
    stage('Deploy Image') {
      steps{
         script {
            docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    stage('Deploy to K8s') {
      steps{
        dir('deployment') {
          withAWS(credentials: 'aws-credentials', region: 'eu-west-2'){
            sh 'kubectl apply -f service.yml'
            sh 'kubectl apply -f deployment.yml'
          }
        }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:latest"
      }
    }
  }
}
