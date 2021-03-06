Feature: all resources needed for this global test
  In order to test this feature
  As an explicit system actor
  I want to prepare all ressources for this global test
  # Core plugin
  Register system       with "org.jbehaviour.plugins.system.SystemSteps" plugin
  # Fluentlenium plugin
  Register fluentlenium with 'org.jbehaviour.plugins.selenium.FluentleniumSteps' plugin
  # Sikuli plugin
  Register sikuli with 'org.jbehaviour.plugins.sikuli.JBehaviourSikuliSteps' plugin
  # Remote plugin
  Register remote with 'org.jbehaviour.plugins.remote.JBehaviourRemoteSteps' plugin
  # Selenium session
  Declare urlWeb as String 'http://localhost:9000'
  Declare playSampleApp as String 'Computers database'
  Declare chromeDriver as String 'C:\\tmp\\chromedriver.exe'
  # All storage need (using json just for sample)
  Declare storageProperties as Json 'org.jbehaviour.test.StorageJsonBean'
{
  "outputFile001":"target/pageDump.hml",
  "outputFile002":"target/screen.png"
}
  # Single variable to declare remote hosts
  Declare sftpResource as String 'sftp://none:none@localhost:2222'
  Declare sshdResource as String 'ssh://none:none@localhost:2222'

Scenario: Setup drivers
 Given set property 'webdriver.chrome.driver' to $chromeDriver

  

