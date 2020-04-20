pipeline {
	agent none
    stages {
        stage('Build') {
            agent master
            steps {
                sh 'mvn -B -DskipTests clean package' 
            }
        }
    }
}