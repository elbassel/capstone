pipeline {
  environment {
    registry = "basselista/capstone"
    registryCredential = 'dockerhub'
    dockerImage = ''
    DOCKER_TAG = getDockerTag()
  }
  agent any
  stages {
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build . registry + ":$DOCKER_TAG"
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
  }
}

def getDockerTag() {
 def tag = sh script: 'git rev-parse HEAD', returnStdout: true
 return tag
}
