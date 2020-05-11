pipeline {
  environment {
    registry = "basselista/capstone"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Build') {
       steps {
         sh 'npm install'
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
    stage('Create cluster for first time') {
      steps{
        script{

            sh 'eksctl create cluster -f ./cluster/cluster-setup.yml'
            sh 'kubectl apply -f ./cluster/service.yml'

        }
      }
    }
    stage('Deploy to K8s') {
       steps {
         sh 'kubectl apply -f ./cluster/deployment.yml'
       }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:latest"
      }
    }
  }
}
