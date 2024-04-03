pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout the source code from version control
                git 'https://github.com/aakshitaa/AppliedDevOps'
            }
        }
        
        stage('Install Dependencies') {
            steps {
                // Install backend dependencies
                sh 'cd server && npm install'
                
                // Install frontend dependencies
                sh 'cd client && npm install'
            }
        }
        
        stage('Build') {
            steps {
                // Build the frontend
                sh 'cd client && npm run build'
            }
        }
        
        // stage('Test') {
        //     steps {
        //         // Run backend tests (if any)
        //         sh 'cd server && npm test'
        //     }
        // }
        
        // stage('Deploy') {
        //     steps {
        //         // Deploy the application (e.g., to a server)
        //         // You can use any deployment method here, such as Docker, Heroku, AWS, etc.
        //         // For example, deploying to a server using SSH
        //         sh 'ssh user@server "deploy-script.sh"'
        //     }
        // }
    }
    
    post {
        success {
            // If the build is successful, send a notification
            echo 'Build successful!'
        }
        failure {
            // If the build fails, send a notification
            echo 'Build failed!'
        }
    }
}
