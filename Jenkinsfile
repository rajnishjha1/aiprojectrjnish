pipeline {

    agent any

    stages {

        stage('Checkout') {

            steps {
                git branch: 'main',
                url: 'https://github.com/your-repo.git'
            }
        }

        stage('Terraform Init') {

            steps {
                sh '''
                cd terraform
                terraform init
                '''
            }
        }

        stage('Terraform Validate') {

            steps {
                sh '''
                cd terraform
                terraform validate
                '''
            }
        }

        stage('Terraform Plan') {

            steps {
                sh '''
                cd terraform
                terraform plan -out=tfplan
                '''
            }
        }

        stage('Terraform Apply') {

            steps {
                sh '''
                cd terraform
                terraform apply -auto-approve tfplan
                '''
            }
        }
    }
}