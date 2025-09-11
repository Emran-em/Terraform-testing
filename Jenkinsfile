pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('Access_key')   // Correct Jenkins credential ID
        AWS_SECRET_ACCESS_KEY = credentials('secret_key')   // Correct Jenkins credential ID
    }

    stages {
        stage('Checkout Code') {
            steps {
                git url: 'https://github.com/Emran-em/Terraform-testing.git', branch: 'main'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh '''
                    terraform plan \
                      -var "filename=terraform-3.txt" \
                      -var "content=completed terraform task 3"
                '''
            }
        }

        stage('Terraform Apply') {
            steps {
                sh '''
                    terraform apply -auto-approve \
                      -var "filename=terraform-3.txt" \
                      -var "content=completed terraform task 3"
                '''
            }
        }
    }

    post {
        success {
            echo "Terraform executed successfully ✅"
        }
        failure {
            echo "Terraform pipeline failed ❌ - check logs"
        }
    }
}
