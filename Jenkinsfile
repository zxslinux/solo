#!/usr/bin/env groovy
pipeline {

  environment {
    registry = "docker.io/zxslinux"
    registryCredential = "zxs60311"
  }

  agent { docker 'maven:3-alpine' }

  stages {
    stage('Build') { 
      steps {
      	sh 'mvn -B -DskipTests clean package'
      	scripts {
      		docker.build registry + ":$BUILD_NUMBER"
        }
      }
  }

  // post {
  //   always {
  //     junit 'build/reports/**/*.xml'
  //   }
  }

}