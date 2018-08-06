node {
  stage('Checkout') {
    checkout scm: [$class: 'GitSCM', branches: [[name: '**']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: ‘LocalBranch’, localBranch: “**”]], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'd01ec796-3a90-493c-89e7-2a2aedb690d3', url: 'https://github.com/renu23/restful-angularjs-java/']]]
    sh "echo ${BRANCH_NAME}"
  }
  stage('Build') {
      sh "mvn clean install"
  }
}
