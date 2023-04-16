pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/DVoultsidis/prototype']]])            
                                                                                                           
          }
        }
        
        stage ("terraform init") {
            steps {
                sh ('terraform init') 
            }
        }
        stage ("terraform validate") {
            steps {
                echo "Terraform action is --> validate"
                sh ('terraform validate') 
           }
        }
        stage ("terraform plan") {
            steps {
                echo "Terraform action is --> plan"
                sh ('terraform plan') 
           }
        }

        stage ("terraform apply") {
            steps {
                echo "Terraform action is --> apply"
                sh ('terraform apply --auto-approve') 
           }
        }
    }
}