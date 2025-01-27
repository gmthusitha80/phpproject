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
                script {
                    sh 'docker build -t $IMAGE_NAME .'
                }
            }
        }
	
        stage('Push to Docker Hub') {
            steps {
                script {
                    // Use the credentials when pushing to Docker Hub
                    docker.withRegistry('https://registry.hub.docker.com/', DOCKERHUB_CREDENTIALS) {
                        sh 'docker push $IMAGE_NAME'
                    }
                }
            }
        }
            
        
	 
	stage('Deploy with Docker-Compose') {
            steps {
                sh 'docker-compose down'
                sh 'docker-compose up -d'
            }
        }
    }
    post {
        success {
            echo 'Build and deployment successful!'
        }
        failure {
            echo 'Build or deployment failed!'
        }
    }
}
