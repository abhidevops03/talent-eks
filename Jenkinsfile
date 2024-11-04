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
        }
	post { 
        
        always {
            emailext attachLog: true, body: '''Hi,
Jenkins Job Status.
Jenkins URL: $BUILD_URL
Thanks
Devops Team''', subject: 'Junkins Build Stauts: $BUILD_NUMBER', to: 'abhidevopspractice@gmail.com'
            
        
        }
    }
}
