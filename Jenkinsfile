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
  stage('testing') {
      sh "mkdir /tmp/tre"
  }
  stage('Push the jar to nexus') {
      nexusArtifactUploader artifacts: [[artifactId: 'java-fullstack', classifier: '', file: '$WORKSPACE/target/java-fullstack-1.0-SNAPSHOT.jar', type: 'jar']], credentialsId: 'c4d7e061-b8c4-44e5-863f-cab54f32724c', groupId: 'com.couchbase.fullstack', nexusUrl: 'http://23.100.56.131:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'sample-test', version: '1.0-SNAPSHOT'

  }
}
