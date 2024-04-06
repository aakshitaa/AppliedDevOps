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
        
        // stage('Deploy to Nexus') {
        //     steps {
        //         nexusArtifactUploader(
        //             nexusVersion: 'nexus3',
        //             protocol: 'http',
        //             nexusUrl: 'http://localhost:8081/repository/Applied_DevOps_Project/',
        //             groupId: 'com.example',
        //             artifactId: 'Lost-And-Found-WebApp',
        //             version: '1.0.0',
        //             repository: 'Applied_DevOps_Project',
        //             credentialsId: 'nexus-credentials'
        //         )
        //     }
            steps {
          nexusArtifactUploader {
            nexusVersion('nexus2')
            protocol('http')
            nexusUrl('http://localhost:8081/repository/Applied_DevOps_Project/')
            groupId('com.group1')
            version('2.4')
            repository('Applied_DevOps_Project')
            credentialsId('nexus-credentials')
            // artifact {
            //     artifactId('nexus-artifact-uploader')
            //     type('jar')
            //     classifier('debug')
            //     file('nexus-artifact-uploader.jar')
            // }
            // artifact {
            //     artifactId('nexus-artifact-uploader')
            //     type('hpi')
            //     classifier('debug')
            //     file('nexus-artifact-uploader.hpi')
            // }
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
