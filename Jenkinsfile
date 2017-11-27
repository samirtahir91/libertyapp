pipeline {
    agent {
        label 'master'
    }
    stages {
        stage('Liberty docker build') {
            steps {
		sh 'rancherUser = "D1F05BB3648916EB0430"; \
		rancherPasswd = "9t9iu6UPeM9NBWn86GyDQNqs7L8tqoyvhmWGVgwz"; \
		rancherCmd = "rancher-compose --url http://192.168.99.100:8060 --access-key ${rancherUser} --secret-key ${rancherPasswd}"; \
                ${rancherCmd} down; sudo docker build -t liberty . ; ${rancherCmd} up -d'
            }
        }
    }
}
