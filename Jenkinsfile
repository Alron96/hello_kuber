pipeline {
    agent any

    environment {
        IMAGE_TAG = '0.1'
        IMAGE_NAME = 'image_name'
        LOGIN = 'maksim0101'
//         PASSWORD = credentials('docker_hub')
        URL_PUSH = 'maksim0101/hello_test'
    }

    stages {
        script {
            echo "$registryName"
        }


//         stage('Build new Docker image in Jenkins Node') {
//             steps {
//                 echo "Starting build image..."
//                 sh 'docker build -t $IMAGE_NAME:$IMAGE_TAG .'
//
//             }
//         }

//         stage('Push Docker image to the container registry on Docker Hub') {
//              steps {
//                  echo "Pushing image to docker-hub"
//                  sh 'docker tag $IMAGE_NAME $URL_PUSH:$IMAGE_TAG'
//                  sh 'docker login -u $LOGIN -p $PASSWORD'
//                  sh 'docker push $URL_PUSH:$IMAGE_TAG'
//              }
//          }

//         stage('Push Docker image to the container registry on Docker Hub') {
//             withCredentials([usernamePassword(credentialsId: 'docker_cred', passwordVariable: 'dockerKey', usernameVariable: 'dockerUser')]) {
//                 echo "Pushing image to docker-hub"
//                 sh 'docker tag $IMAGE_NAME $URL_PUSH:$IMAGE_TAG'
//                 sh 'docker login --username $dockerUser --password $dockerKey'
//                 sh 'docker push $URL_PUSH:$IMAGE_TAG'
//             }
//         }

//         stage('Remove unused Docker image from Jenkins Node') {
//             steps {
//                 echo "Remove image after pushing"
//                 sh 'docker images'
//                 sh 'docker rmi -f $IMAGE_NAME:$IMAGE_TAG'
//                 sh 'docker images'
//             }
//         }

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

//         stage('Create Jenkins.yaml on Cluster') {
//             steps {
//                 sh 'kubectl create ns jenkins'
//                 sh 'kubectl get ns'
//                 sh 'vi jenkins.yml'
//                 // Готовый пример jenkins.yml лежит в корне
//                 sh 'kubectl create -f jenkins.yml'
//                 sh 'kubectl get sa -n jenkins'
//                 sh 'kubectl describe secret $(kubectl describe serviceaccount jenkins --namespace=jenkins | grep Token | awk '{print $2}') --namespace=jenkins' // выведет в консоль токен для подключения к куберу
//
//             }
//         }
    }
}
