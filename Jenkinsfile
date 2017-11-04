pipeline {
    agent { dockerfile }
    stages {
        stage('Test') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    }
}
