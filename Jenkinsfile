pipeline {
  agent {
    docker {
      image 'maven'
    }

  }
  stages {
    stage('') {
      steps {
        git(url: 'https://github.com/zxslinux/solo.git', branch: 'master', poll: true)
      }
    }
  }
}