pipeline {
    agent {
        label 'master'
    }
    stages {
        stage('Liberty docker build') {
            steps {
                sh 'sudo docker-compose down; sudo docker build -t liberty . ; rancher-compose --url http://192.168.99.100:8080 --access-key BC6BA36A83D09E67686F --secret-key Ak15rAkifAeZDNyVGKEy1FQjawzEiiteThAPUBLf up -d'
            }
        }
    }
}
