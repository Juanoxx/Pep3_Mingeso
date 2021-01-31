pipeline {
    agent { dockerfile true }

    stages {
        stage('Checkout-git') {
            steps {
                git poll: true, url: 'https://github.com/Juanoxx/Pep3_Mingeso'
            }
        }

        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                sh 'python3 --version'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}