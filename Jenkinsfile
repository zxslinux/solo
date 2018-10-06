pipeline {
  agent none

  stages {
    stage('Build') { 
      agent { docker 'maven:3-alpine' }
      steps {sh 'mvn -B -DskipTests clean package'}
    }

    stage('test') {
      steps {sh 'mvn test'}
    }


    stage('docker image build and push') {
      agent {
        dockerfile {
          filename 'Dockerfile'
          dir './'
          label 'zxslinux/tomcat-solo:v2'
        }
      }
      steps {
        sh 'docker login -u zxslinux -p zxs60311'
        sh 'docker push zxslinux/tomcat-solo:v2'
      }
    }

  }

  post {
    always {
      junit 'build/reports/**/*.xml'
    }
  }

}