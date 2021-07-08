pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
				echo '------------------start stage'
				sh 'whoami'
				sh 'hostname'
            }
        }
    }
}