pipeline
{
agent any 

  stages
    {
       
     stage('SCM Checkout')
       {
         steps
         {
          git branch: 'may-docker-cicd', url: 'https://github.com/prakash-training/maven-project'
         }
       } 
    
     stage('Code Build')
       {
         steps
         {
          withMaven(jdk: 'localjdk', maven: 'maven-demo')
            {
              sh 'mvn clean package'
            }
         }
       } 
    
     stage('Build Docker Image')
       {
         steps
         {
          sh 'docker build -t pcb9393/dockerdemo:01 .'
         }
       } 
    
     stage('Push Docker Image')
       {
         steps
         {
          withCredentials([usernameColonPassword(credentialsId: 'docker_id', variable: 'docker_id')]) 
              {
                sh "docker login -u pcb9393 -p ${docker_id}"
                sh 'docker push pcb9393/dockerdemo:01'
              }
         }
       }  
      
      
    }

}
