pipeline {
    agent {
        dockerfile true
    }

    stages {

        stage('Checkout SCM') {
            steps {
                git url: 'https://github.com/BOUSSELHAMYIYKI/bosse.git', branch: 'master'
            }
        }

        stage('Run Java App') {
            steps {
                sh 'java -cp untitled1/src tp1'
            }
        }
    }

    post {
        success {
            echo '✅ Build & Run  Docker '
        }
        failure {
            echo ' Docker'
        }
    }
}
