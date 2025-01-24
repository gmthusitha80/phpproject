pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/gmthusitha80/phpproject.git'
            }
        }
        
    }
    post {
        always {
            echo 'Pipeline execution completed'
        }
    }
}
