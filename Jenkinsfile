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
    environment {
        NPM_USER = credentials('nexus-credentials').username
        NPM_PASS = credentials('nexus-credentials').password
    }
    steps {
        // Publish npm package to Nexus
        bat "npm publish --registry=http://localhost:8081/repository/AppliedDevOpsRepo/ --user=%NPM_USER% --password=%NPM_PASS%"
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
