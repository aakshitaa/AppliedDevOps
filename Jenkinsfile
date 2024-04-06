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
            def credentials = findCredentials(credentialsId: 'nexus-credentials')
            def NPM_USER = credentials?.username
            def NPM_PASS = credentials?.password

            if (NPM_USER && NPM_PASS) {
                // Publish npm package to Nexus
                bat "npm publish --registry=http://localhost:8081/repository/AppliedDevOpsRepo/ --user=${NPM_USER} --password=${NPM_PASS}"
            } else {
                error "Failed to retrieve Nexus credentials"
            }
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
