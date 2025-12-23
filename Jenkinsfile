pipeline {
    agent any

    stages {

        stage('Checkout SCM') {
            steps {
                git url: 'https://github.com/BOUSSELHAMYIYKI/bosse.git', branch: 'master'
            }
        }

        stage('Check Java') {
            steps {
                sh 'java -version'
            }
        }

        stage('Build') {
            steps {
                sh 'javac untitled1/src/Boucle.java'
            }
        }

        stage('Run') {
            steps {
                sh 'java -cp untitled1/src Boucle'
            }
        }
    }

    post {
        success {
            echo '✅ Build Java réussi'
        }
        failure {
            echo '❌ Erreur lors du build Java'
        }
    }
}
