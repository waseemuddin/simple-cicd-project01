
pipeline {
    agent any

    stages {
        stage("Code checkout") {
            steps {
                git branch: 'main', credentialsId: 'github-id', url: 'https://github.com/waseemuddin/simple-cicd-project01.git'
            }
        }
    }
}




/* jenins file tesitng

pipeline {
    agent any

    stages {
        stage("Code checkout") {
            steps {
                git branch: 'main', url: 'https://github.com/waseemuddin/simple-cicd-project01.git'
            }
        }
        stage("image build") {
            steps {
                sh 'docker image build -t waseem63/mydockerapp:v$BUILD_ID .'
                sh 'docker image tag waseem63/mydockerapp:v$BUILD_ID waseem63/mydockerapp:latest'
            }
        }
        stage("Image Push") {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-hub-id', passwordVariable: 'PASS', usernameVariable: 'USER')]) {
                    
                    sh "echo $PASS | docker login -u $USER --password-stdin"
                    sh 'docker push waseem63/mydockerapp:v$BUILD_ID'
                    sh 'docker push waseem63/mydockerapp:latest'
                    sh 'docker rmi waseem63/mydockerapp:v$BUILD_ID  waseem63/mydockerapp:latest'
                }
            }
            
        }
        stage("Container Creating") {
            steps {
                sh 'docker run -itd --name todoapp -p 3000:3000 waseem63/mydockerapp:latest'
            
            }
        }
        
    }
}


*/