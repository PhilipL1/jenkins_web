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
        stage('Test windows') {
            steps {
                echo 'Test window '
            }
        }
        stage('Test Linux') {
            steps {
                echo 'Test Linux '
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy stage '
            }
        }
    }
}
