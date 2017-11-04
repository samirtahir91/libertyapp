pipeline {
    agent { docker {} }
    stages {
        stage('Test') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    }
}
