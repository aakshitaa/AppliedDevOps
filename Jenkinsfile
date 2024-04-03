pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout the source code from version control
                git 'https://github.com/aakshitaa/AppliedDevOps'
            }
        }
        
        stage('Build') {
            steps {
            }
        }
        
    //     stage('Test') {
    //         steps {
    //             // Run tests
    //             sh 'mvn test'
    //         }
    //     }
        
    //     stage('Deploy') {
    //         steps {
    //             // Deploy the application (e.g., to a server)
    //             sh 'ssh user@server "deploy-script.sh"'
    //         }
    //     }
    // }
    
    post {
        success {
            // If the build is successful, send a notification
            echo 'Build successful! Sending email notification...'
            emailext (
                subject: 'Build Successful',
                body: 'Your build passed successfully.',
                to: 'user@example.com'
            )
        }
        failure {
            // If the build fails, send a notification
            echo 'Build failed! Sending email notification...'
            emailext (
                subject: 'Build Failed',
                body: 'Your build failed.',
                to: 'user@example.com'
            )
        }
    }
}
