pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
				echo '------------------start stage'
                #sh 'docker build --no-cache -t alekzander7c4/test_py .'
                #sh 'docker run -dp 8888:5000 --net test_network --name srv-app-01 --rm alekzander7c4/test_py'
				sh 'whoami'
				sh 'hostname'
            }
        }
    }
}