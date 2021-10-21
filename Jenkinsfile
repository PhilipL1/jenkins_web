pipeline {
    agent any

    options {
    timestamps()
}
    stages {
        stage('Build') {
            steps {
                echo 'build stage '
            }
        }
        stage('Test') {
            steps {
                echo 'Test stage '
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy stage '
            }
        }
    }
}
