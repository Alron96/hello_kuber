pipeline {
    agent any

    environment {
        IMAGE_TAG = '0.1'
        IMAGE_NAME = 'image_name'
        DOCKER_PATH = '/Dockerfile'
        LOGIN = 'maksim0101'
        PASSWORD = 'dckr_pat_7-oIeNOGTsy0YYjOfeDW2pjVUoc'
        URL_PUSH = 'maksim0101/hello_test:latest'
    }

    stages {
        stage('Build new Docker image in Jenkins Node') {
            steps {
                sh 'docker build -f $DOCKER_PATH -t $IMAGE_NAME:$IMAGE_TAG .'
            }
        }

        stage('Push Docker image to the container registry on Docker Hub') {
            steps {
                sh 'docker login -u $LOGIN -p $PASSWORD'
                sh 'docker push $URL_PUSH'
            }
        }

        stage('Remove unused Docker image from Jenkins Node') {
            steps {
                sh 'docker images'
                sh 'docker rmi -f $IMAGE_NAME:$IMAGE_TAG'
                sh 'docker images'
            }
        }
    }
}
