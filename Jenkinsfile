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
     
    }  
}
