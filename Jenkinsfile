pipeline {
    dir('src'){agent { dockerfile true }}

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
                            bash -c "main.py"
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