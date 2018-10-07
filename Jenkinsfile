pipeline {
	agent none
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'maven:3-alpine' 
                    args '-v /root/.m2:/root/.m2' 
                }
            }
            steps {
                sh 'mvn -B -DskipTests clean package' 
            }
        }
        stage('build docker image') {
            agent any
        	steps {
                sh '''docker login -u zxslinux -p zxs60311
                docker build -t zxslinux/tomcat-solo .
                docker push zxslinux/tomcat-solo'''
        	}
        }
    }
}