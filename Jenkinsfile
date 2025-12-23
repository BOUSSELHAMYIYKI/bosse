pipeline {
    agent any

    tools {
        jdk 'jdk21'
    }

    stages {
        stage('Checkout SCM') {
            steps {
                git 'https://github.com/BOUSSELHAMYIYKI/bosse.git'
            }
        }

        stage('Build') {
            steps {
                sh 'javac Boucle.java'
            }
        }

        stage('Run') {
            steps {
                sh 'java Boucle'
            }
        }
    }

    post {
        success {
            echo '✅ Build avec Java 21 réussi'
        }
        failure {
            echo '❌ Erreur Java'
        }
    }
}
