pipeline {
    agent {
        label 'master'
    }
    stages {
        stage('Liberty docker build') {
            steps {
                sh 'sudo docker-compose down; sudo docker build -t liberty . ; rancher-compose --url http://192.168.99.100:8060 --access-key 7815A44E94CC1D35FFD7 --secret-key p9LqGybshjjqgqko36QD329kgygNvSGtH3N3NKhS up -d'
            }
        }
    }
}
