def printFromFunction() {
    println("Iam printing from a function")
}

pipeline {
    agent any

    options {
    timestamps()
}
    stages {
        stage('Build') {
            steps {
                echo 'build stage '
                printFromFunction
            }
        }
    }
        stage ('Test') {
        parallel {
            
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
        } 
    }
        stage('Deploy') {
            steps {
                echo 'Deploy stage '
            }
        }
    }
