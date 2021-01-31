pipeline {
    agent any

    stages {
        stage('Checkout-git') {
            steps {
                git poll: true, url: 'https://github.com/Juanoxx/Pep3_Mingeso'
            }
        }

        stage('docker') {
            steps {
                dir('src')
                {
                    sh '''
                            docker-compose up
                    '''
                }
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}