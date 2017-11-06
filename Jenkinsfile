pipeline {
    agent {
        label 'master'
    }
    stages {
        stage('Liberty docker build') {
            steps {
                sh 'sudo docker-compose down -d; sudo docker-compose up -d'
            }
        }
    }
}
