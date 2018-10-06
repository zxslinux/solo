#!/usr/bin/env groovy
pipeline {

  environment {
    registry = "docker.io/zxslinux"
    registryCredential = "zxs60311"
  }

  agent none

  stages {
    stage('Build') { 
      agent { docker 'maven:3-alpine' }
      steps {sh 'mvn -B -DskipTests clean package'}

      steps {
        scripts {
          def customImage = docker.build("zxslinux/tomcat-solo:${env.BUILD_ID}")
          customImage.push()
        }
      }
    }

  }

  post {
    always {
      junit 'build/reports/**/*.xml'
    }
  }

}