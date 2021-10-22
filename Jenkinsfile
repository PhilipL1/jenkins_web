@Library("jenkins_shared") _

pipeline {
    environment {
        MYENVVAR = "testenvvar"
        GITHUB = credentials("jenkins")
    }
    parameters {
        string(name: "Name", defaultValue: 'Philip', description: "your name")
    }

    agent any

    options {
        timestamps()
    }

    stages {
        
        stage("Build") {
            steps {
                echo "Building now"
                echo "${MYENVVAR}"
                echo "${params.Name}"
                echo "${GITHUB}"
                helloVariable("Philip")
                script {
                    utils.replaceString()
                }
            }
        } 

        stage("Test") {
            steps{
                echo "Testing now"
                sh """
                   chmod +x script.sh
                   ./script.sh "jenkins... job: ${BUILD_NUMBER}"
                """
            }       

        }
        
        
        stage("Deploy"){
            steps{
                echo "Deploying now"
                sshPublisher(publishers: [sshPublisherDesc(configName: 'Http', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'mv index.html /var/www/html', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: 'index.html')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }
    }

    post {
        always {
            echo "archiving"
            archiveArtifacts artifacts: 'index.html', followSymlinks: false
        }
        cleanup {
            cleanWs()
        }
    }
}