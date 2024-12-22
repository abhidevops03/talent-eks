pipeline {
    agent any
    parameters { string(name: 'BRANCH', defaultValue: 'main', description: '')}
    stages {
       /* stage("github download"){
            steps{
		 sh " git branch: 'main', credentialsId: 'jenkins-ssh-key', url: 'git@github.com:abhidevops03/talent-eks.git' "		              
            }
        
        }*/

        stage("initialize"){
            steps{
                sh 'yes | terraform init -migrate-state'  
            }
        }
	stage("validate"){
	   steps{
		sh 'terraform validate'
		}
	}
     
	stage("planning"){
            steps{
                sh 'terraform plan'
            }
        }
/*	stage("setting path variable"){
            steps{
                sh 'export KUBE_CONFIG_PATH=$HOME/.kube/config'
            }

        }*/

        stage("deploy"){
            steps{
                sh 'terraform apply --auto-approve'  
            }
        }        }
	/*stage("destroy"){
	    steps{
		sh 'yes| terraform destroy'
		}
	}*/
 
	post { 
        
        always {
            emailext attachLog: true, body: '''Hi,
Jenkins Job Status.
Jenkins URL: $BUILD_URL
Thanks
Devops Team''', subject: 'Junkins Build Stauts: $BUILD_NUMBER', to: 'abhidevops03@gmail.com'
            
        
        }
    }
}
