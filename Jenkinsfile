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
                        sh 'docker image build -t demoworldimg1 .'
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
