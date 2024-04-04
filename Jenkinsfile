pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
               sh 'git clone https://github.com/aakshitaa/AppliedDevOps.git'
            }
        }
        
        stage('Install Dependencies') {
            steps {
                sh 'cd Lost-And-Found-WebApp && npm install'
            }
        }
        
        stage('Build') {
            steps {
                // Build the frontend
                sh 'cd Lost-And-Found-WebApp && npm run build'
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
