pipeline {
    agent {
        label 'master'
    }
    stages {
        stage('Liberty docker build') {
            steps {
		sh 'rancher-compose --url http://192.168.99.100:8060 --access-key 6904917D4BD09C771EC6 --secret-key bvFD2HhyfoUhnakNnFJUfYxyBFPKHquBFxRyr56A  down;sudo docker build -t liberty . ;rancher-compose --url http://192.168.99.100:8060 --access-key 6904917D4BD09C771EC6 --secret-key bvFD2HhyfoUhnakNnFJUfYxyBFPKHquBFxRyr56A up -d'
            }
        }
    }
}
