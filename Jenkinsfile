pipeline {
    agent any
    tools {
        maven 'maven-3.6.3'
    }
    stages {
        stage('Maven Build') {
            steps {
                bat 'mvn clean install package'
            }
        }
        stage('Maven Test') {
            steps {
                bat 'mvn test'
            }
        }
        stage('Deploy to webserver') {
            steps {
                deploy adapters: [tomcat9(credentialsId: 'localhost-tomcat-credentials', path: '', url: 'http://localhost:8088/')], contextPath: null, war: '**/*.war'
            }
        }
    }
}
