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
                    script {
	          	sh 'docker save -o demo-world.tar demoworldimg1'
                    }
		}
	    }

            stage('Deploy') {
		steps {
			echo 'Deploying....'
                }
	   }
     }
}
