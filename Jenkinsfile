pipeline
{
  environment
  {
    registry = "tulsikokare/demofirstimage"
    registryCredential = 'dockerid'
    dockerImage = ''
  }
  agent any
  
  stages
  {
    stage('Build Image')
    {
      steps
      {
        script
        {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
     }
     stage('Deploy the image')
     {
      steps
      {
        script
        {
          docker.withRegistry( '',registryCredential )
          {
            dockerImage.push()
          }
         }
      }
     }
  }
}
