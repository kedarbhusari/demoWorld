#!/usr/bin/groovy
pipeline {
	agent any

	stages {

	   stage ('Build') {
                steps {
                    sh 'mvn clean package'
                }
            }

            stage('Docker Build') {
                steps {
                    script {
                        docker.build("kedarbhusari/hello-world:${TAG}")
                    }
		}	
            }
        
            stage('Test') {
		steps {
	          	echo 'Testing..'
		}
	    }

		stage('Deploy') {
			steps {
				echo 'Deploying....'
			}
		}

	}
}
