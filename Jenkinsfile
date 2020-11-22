pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "maven3.6.3"
    }

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/imraviarora/hello-world.git'

                // Run Maven on a Unix agent.
                //sh "mvn -Dmaven.test.failure.ignore=true clean package"

                // To run Maven on a Windows agent, use
                bat "mvn -Dmaven.test.failure.ignore=true clean package"
            }
        }
        stage('Deploy To Tomcat') {
            steps {
                deploy adapters: [tomcat8(credentialsId: 'tomcat_on_thinkpad', path: '', url: 'http://localhost:8088/')], contextPath: null, onFailure: false, war: '**/*.war'
            }
        }
    }
}
