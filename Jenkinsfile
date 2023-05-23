pipeline {
    agent any
    
    stages {
        stage('Clone repository') {
            steps {
                git 'https://github.com/caynox/DevOps1.git'
            }
        }
        
    
        
        stage('Build Docker Image') {
            steps {
                // Build the Docker image using the Dockerfile
                sh '/usr/local/bin/docker-compose up'
            }
        }
    }
    post {
        always {
            script {
                sh '/usr/local/bin/docker-compose down -v'
                sh '/usr/local/bin/docker network prune -f'
            }
        }
    }
}
