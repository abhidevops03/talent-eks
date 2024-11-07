pipeline {
    agent any
    parameters { string(name: 'BRANCH', defaultValue: 'main', description: '')}
    stages {
        stage("github download"){
            steps{
		 sh 'git branch: 'main', credentialsId: 'jenkins-ssh-key', url: 'git@github.com:abhidevops03/talent-eks.git''		              
            }
        
        }
        stage("initialize"){
            steps{
                sh 'yes | terraform init'  
            }
        }
        stage("planning"){
            steps{
                sh 'terraform plan'  
            }
        }
        stage("deploy"){
            steps{
                sh 'yes | terraform apply'  
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
