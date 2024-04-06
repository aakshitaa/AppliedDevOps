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
                // Publish npm package to Nexus
                withCredentials([usernamePassword(credentialsId: 'nexus-credentials', usernameVariable: 'NEXUS_USERNAME', passwordVariable: 'NEXUS_PASSWORD')]) {
                    sh "npm publish --registry=http://localhost:8081/repository/AppliedDevOpsRepo/ --user=${NEXUS_USERNAME} --password=${NEXUS_PASSWORD}"
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
