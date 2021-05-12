// Powered by Infostretch 

timestamps {

node () {

	stage ('TCS-Sprint-2/sample-ORD-Pipeline - Checkout') {
 	 checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '444a0463-27ee-48b7-8ed4-6a58ad1cf56a', url: 'https://github.com/manu1979522/DevOps-Internship.git']]]) 
	}
	stage ('TCS-Sprint-2/sample-ORD-Pipeline - Build') {
 	
// Unable to convert a build step referring to "org.jenkinsci.plugins.buildnamesetter.BuildNameSetter". Please verify and convert manually if required.
// Unable to convert a build step referring to "sp.sd.flywayrunner.builder.FlywayBuilder". Please verify and convert manually if required.
// Unable to convert a build step referring to "sp.sd.flywayrunner.builder.FlywayBuilder". Please verify and convert manually if required.
// Unable to convert a build step referring to "sp.sd.flywayrunner.builder.FlywayBuilder". Please verify and convert manually if required.
// Unable to convert a build step referring to "sp.sd.flywayrunner.builder.FlywayBuilder". Please verify and convert manually if required. 
	}
	stage ('TCS-Sprint-2/sample-ORD-Pipeline - Post build actions') {
/*
Please note this is a direct conversion of post-build actions. 
It may not necessarily work/behave in the same way as post-build actions work.
A logic review is suggested.
*/
// Unable to convert a post-build action referring to "hudson.plugins.emailext.ExtendedEmailPublisher". Please verify and convert manually if required.
		// Mailer notification
		step([$class: 'Mailer', notifyEveryUnstableBuild: true, recipients: 'manu866mkr@gmail.com', sendToIndividuals: true])
 
	}
}
}