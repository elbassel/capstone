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
 int randomStringLength = 32
 String charset = (('a'..'z') + ('A'..'Z') + ('0'..'9')).join()
 String randomString = RandomStringUtils.random(randomStringLength, charset.toCharArray())
 return randomString
}
