node {
  stage('Checkout') {
    checkout scm: [$class: 'GitSCM', branches: [[name: '**']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'd01ec796-3a90-493c-89e7-2a2aedb690d3', name: 'origin', refspec: '+refs/pull/*:refs/remotes/origin/pr/*', url: 'https://github.com/renu23/restful-angularjs-java/']]]
  }
  stage('Build') {
      sh "mvn clean install"
  }
}
