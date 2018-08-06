node {
  stage('Checkout') {
    checkout scm: [$class: 'GitSCM', branches: [[name: '**']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'd01ec796-3a90-493c-89e7-2a2aedb690d3', name: 'origin', refspec: '+refs/pull/*:refs/remotes/origin/pr/*', url: 'https://github.com/renu23/restful-angularjs-java/']]]
  }
  stage('SonarQube analysis') {
    // requires SonarQube Scanner 2.8+
    def scannerHome = tool 'SonarQube';
    withSonarQubeEnv('SonarQube') {
      sh "${scannerHome}/bin/sonar-scanner"
    }
  }
  stage('Build') {
      sh "mvn clean install"
  }
}
