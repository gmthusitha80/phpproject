pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-credentials') // Jenkins credential ID
        IMAGE_NAME = 'gmthusitha/phpproject'
    }    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/gmthusitha80/phpproject.git'
            }
        }
	 stage('Build Docker Image') {
            steps {
                sh 'docker build -t phpapp .'
            }
        }
        
    }
    post {
        always {
            echo 'Pipeline execution completed'
        }
    }
}
