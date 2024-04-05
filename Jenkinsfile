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
        
     stage('Deploy to Nexus') {
    steps {
        nexusArtifactUploader {
            nexusVersion('nexus3')
            protocol('http')
            nexusUrl('http://localhost:8081/repository/Applied_DevOps_Project/')
            groupId('com.example')
            version('1.0.0')
            repository('Applied_DevOps_Project')
            credentialsId('nexus-credentials')
            artifact {
                artifactId('Lost-And-Found-WebApp')
                file('Lost-And-Found-WebApp/build')
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


    // stage('Build Image') {
    //   steps {
    //     // Login to Docker Hub (requires credentials setup in Jenkins)
    //   bat 'docker login -u ${env.3d9ee0eb-3601-4ebf-9c9d-e167b8366908} -p ${env.3d9ee0eb-3601-4ebf-9c9d-e167b8366908}'

    //     // Build the image based on Dockerfile location (replace 'lost-and-found-web-app' with your actual location)
    //     bat 'docker build -t aakshita/lost-and-found-web-app:latest ./lost-and-found-web-app'
    //   }
    // }

    // stage('Push Image') {
    //   steps {
    //     // Push the image to Docker Hub
    //     bat 'docker push aakshita/lost-and-found-web-app:latest'
    //   }
    // }
 