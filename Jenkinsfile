pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                bat 'rmdir /s /q AppliedDevOps'
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
                bat 'cd Lost-And-Found-WebApp && npm run build'
            }
        }
        
        stage('Serve Build Files') {
            steps {
                // Serve the build files using serve
                bat '''
                    cd Lost-And-Found-WebApp
                    npm install -g serve
                    serve -s build
                '''
            }
        }
      
      stage('Publish to Nexus') {
    steps {
        script {
                // Publish npm package to Nexus
                bat "npm publish"
        }
    }
}


        
   
    }
    
    
    post {
        success {
            echo 'Build successful!'
        }
        failure {
            echo 'Build failed!'
        }
    }
}
