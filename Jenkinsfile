pipeline {
  agent any
  stages {
    stage('check out') {
      steps {
        git(url: 'https://github.com/zxslinux/solo.git', branch: 'master')
      }
    }
    stage('build') {
      steps {
        sh '''mvn package -Dmaven.test.skip=true
docker build -t zxslinux/tomcat-solo:test .'''
      }
    }
    stage('push image') {
      steps {
        sh '''docker login -u zxslinux -p zxs60311 https://index.docker.io/v1
docker push zxslinux/tomcat-solo:test'''
      }
    }
    stage('deploy') {
      steps {
        echo 'haha'
      }
    }
  }
}