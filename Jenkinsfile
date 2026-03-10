pipeline{
    agent any
    stages{
        stage ('Code Clone'){
            steps{
                git branch: 'main', url: 'https://github.com/learnwithnaman/Two-Tier-Project.git'
            }
        }
        stage ('Build Docker Image'){
            steps{
                sh 'docker build -t flask-app:latest .'
            }
        }
        stage ('Deploy with Docker Compose'){
            steps{
                sh 'docker compose down || true'
                sh 'docker compose up --build -d'
            }
        }
    }
}
