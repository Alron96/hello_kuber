pipeline {
    agent any

    environment {
        IMAGE_TAG = '0.1'
        IMAGE_NAME = 'image_name'
        DOCKER_PATH = '/Dockerfile'
        YANDEX = credentials('0000000000') // Вписать id yandex cloud креденшела из Jenkins
        DEPLOY_NAME = 'app_deploy'
        CHART_HELM_DIR_NAME = 'xxx/yyy/' // https://www.youtube.com/watch?v=-lLT0vlaBpk - пояснения, что за директория с самого начала
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

//         stage('Helm operations') {
//             steps {
//                 sh 'helm registry login -u string -p string' // Заполнить имя и пароль профиля helm
//                 sh 'helm install $DEPLOY_NAME $CHART_HELM_DIR_NAME'
//                 sh 'helm delete $DEPLOY_NAME' // удалить нод...или под (надо проверить)
//             }
//         }
//
//         stage('Cluster statistic') {
//             steps {
//                 sh 'helm list' // Получим список запущенных сервисов в единичном экземпляре
//                 sh 'kubectl get deploy' // Получим упрощенный список с минимально необходимой информацией
//                 sh 'kubectl get pods' // Получаем полный список подов
//                 sh 'kubectl get svc' // Чтобы узнать кластерный и исходящий IP
//             }
//         }
    }
}
