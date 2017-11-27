pipeline {
    agent {
        label 'master'
    }
    stages {
        stage('Liberty docker build') {
            steps {
		sh 'rancher-compose --url http://192.168.99.100:8060 --access-key EA265161B9DDA77565CF --secret-key GqVRTLLyVN38UKyiZFF2GNUHYBGgKGAkSNvApPNk down;sudo docker build -t liberty . ;rancher-compose --url http://192.168.99.100:8060 --access-key EA265161B9DDA77565CF --secret-key GqVRTLLyVN38UKyiZFF2GNUHYBGgKGAkSNvApPNk up -d'
            }
        }
    }
}
