@Library('jenkins_shared') _

def printFromFunction() {
    println("I am printing from a function")
}

def replaceString() {
    def text = readFile file: "index.html" // put the file as a variable 
    text = text.replaceAll("%BUILD_NUMBER%", "${BUILD_NUMBER}") // place holder (wherever you see this), replace with this (jenkins built in env varible )
    writeFile file: "index.html", text:text // put it in the file 
}

pipeline {

    agent any

    options {
        timestamps()
    }

    stages {
        
        stage("Build") {
            steps {
                echo "Building now"
                hello()
                helloVariable("PHILIP")
                script {
                    utils.replaceString()
                }
            }
        } 
        stage("Test") {
            steps { 
               sh "bash ./script.sh"
                }
            }   
        stage("Deploy"){
            steps{
                echo "Deploying now"
            }
        }
    }
}