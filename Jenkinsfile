pipeline
{
   agent any
   stages
   {
     stage('SCM Checkout')
     {
         steps
        {
         git 'https://github.com/prakash-training/maven-project'
        }
     }

     stage('Compile code')
     {
         steps
          {
             withMaven(jdk: 'localjdk', maven: 'maven-demo')
            {
              sh 'mvn compile'
            }
          }
     }
   stage('Test code')
     {
         steps
          {
             withMaven(jdk: 'localjdk', maven: 'maven-demo')
            {
              sh 'mvn test'
            }
          }
      }

   stage('Please package the code')
     {
         steps
          {
             withMaven(jdk: 'localjdk', maven: 'maven-demo')
            {
              sh 'mvn package'
            }
          }
      }
   stage('Deployment to Tomcat')
    { 
      steps 
      {
      sshagent(['0ed3499c-1cc2-4ffb-b36b-bb59f9af60d0'])
         {
          sh 'scp -o StrictHostKeyChecking=no */target/webapp.war ec2-user@172.31.49.207:/var/lib/tomcat/webapps'
         }
      }   
    }
    

     
    }  
}
