pipeline {
    agent { dockerfile true }

    stages {
        stage('Checkout-git') {
            steps {
                echo 'Tomando los datos desde repositorio Github..'
                git poll: true, url: 'https://github.com/Juanoxx/Pep3_Mingeso'
            }
        }

        stage('Pruebas-Unitarias') {
            steps {
                echo 'Realizando las pruebas unitarias con Pytest..'
                sh '''
                        bash -c "pytest"
                '''
            }
        }
        stage('Analisis-estatico') {
            steps {
                echo 'Realizando análisis estático con Pylint..'
                sh '''
                        bash -c "su python3 -m pylint \\main.py"
                '''
            }
        }
        stage('Deploy') {
            steps {
                echo 'Desplegando....'
            }
        }
    }
}