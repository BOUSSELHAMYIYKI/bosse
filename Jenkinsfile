pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "java-intellij:latest"
    }

    stages {

        stage('Checkout SCM') {
            steps {
                echo "🔄 Checkout du dépôt GitHub"
                git url: 'https://github.com/BOUSSELHAMYIYKI/bosse.git', branch: 'master'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo "🐳 Build de l'image Docker"
                sh "docker build -t ${DOCKER_IMAGE} ."
            }
        }

        stage('Run Java Program') {
            steps {
                echo "▶️ Lancement du conteneur Docker et exécution du programme Java"
                sh "docker run --rm -v ${WORKSPACE}:/app ${DOCKER_IMAGE}"
            }
        }
    }

    post {
        success {
            echo '✅ Build et exécution Java réussis !'
        }
        failure {
            echo '❌ Erreur pendant le build ou l’exécution Java'
        }
    }
}
