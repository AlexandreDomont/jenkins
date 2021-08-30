node{
  def app

    stage('Clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("alex/nginx")
    }

    stage('Test image') {
        docker.image('alex/nginx').withRun('-p 8007:80') { c ->
        sh 'docker ps'
        sh 'curl localhost:8007'
	sh 'sleep 2m'
	     }
    }
}
