def printFromFunction() {
    println("I am printing from a function")
}

def replaceString() {
    def text = readFile file: "index.html"
    text = text.replaceAll("%BUILD_NUMBER%", "${BUILD_NUMBER}")
    writeFile file: "index.html", text:text
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
                printFromFunction()
                replaceString()
            }
        } 

        stage("Test") {
            parallel {

                stage("Test on Linux"){
                    steps{
                        echo "Testing on Linux now"
                    }       
                }

                stage("Test on Windows"){
                    steps{
                        echo "Testing on Windows now"
                    }
                }
            }
        }
        
        stage("Deploy"){
            steps{
                echo "Deploying now"
            }
        }
    }
}