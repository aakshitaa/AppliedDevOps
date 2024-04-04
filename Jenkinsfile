pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
            //    bat 'rmdir /s /q AppliedDevOps'
               bat 'git clone https://github.com/aakshitaa/AppliedDevOps.git'
            }
        }
        
        stage('Install Dependencies') {
            steps {
                bat 'cd Lost-And-Found-WebApp && npm install'
            }
        }
        
        stage('Build') {
            steps {
                // Build the frontend
                bat 'cd Lost-And-Found-WebApp && npm run build'
            }
        }
        
        // stage('Test') {
        //     steps {
        //         // Run backend tests (if any)
        //         bat 'cd server && npm test'
        //     }
        // }
        
        // stage('Deploy') {
        //     steps {
        //         // Deploy the application (e.g., to a server)
        //         // You can use any deployment method here, such as Docker, Heroku, AWS, etc.
        //         // For example, deploying to a server using SSH
        //         bat 'ssh user@server "deploy-script.sh"'
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
