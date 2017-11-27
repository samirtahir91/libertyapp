pipeline {
    agent {
        label 'master'
    }
    stages {
        stage('Liberty docker build') {
            steps {
		sh 'rancher-compose --url http://192.168.99.100:8060 --access-key D1F05BB3648916EB0430 --secret-key 9t9iu6UPeM9NBWn86GyDQNqs7L8tqoyvhmWGVgwz down;sudo docker build -t liberty . ;rancher-compose --url http://192.168.99.100:8060 --access-key D1F05BB3648916EB0430 --secret-key 9t9iu6UPeM9NBWn86GyDQNqs7L8tqoyvhmWGVgwz up -d'
            }
        }
    }
}
