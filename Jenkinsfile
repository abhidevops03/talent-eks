pipeline {
    agent any
    parameters { string(name: 'BRANCH', defaultValue: 'main', description: '')}
    stages {
        stage("github download"){
            steps{
              
            }
        
        }
        stage("initialize"){
            steps{
                sh 'terraform init'  
            }
        }
        stage("planning"){
            steps{
                sh 'terraform plan'  
            }
        }
        stage("deploy"){
            steps{
                sh 'terraform apply --auto-approve'  
            }
        }
        stage("initialize"){
            steps{
                sh ''
            }
        }
    }
}
