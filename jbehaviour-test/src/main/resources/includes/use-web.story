Feature: launch the web client on 'http://localhost:9000'
  In order to test this feature
  As an explicit system actor
  I want to verify this behaviour

Scenario: Verify we can go to 'http://localhost:9000'
 Given set property 'webdriver.chrome.driver' to $chromeDriver
 Given launch the html navigator
  When i goto to $urlWeb
  When i fill '#searchbox' with 'ACE'
  When i submit '#searchsubmit'
  Then store last result in file $storageProperties.outputFile001
  Then Title must contain $playSampleApp
  Then Body must contain 'Displaying 1 to 6 of 6'
  