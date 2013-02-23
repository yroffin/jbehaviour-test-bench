Feature: launch the web client on 'http://localhost:9000'
  In order to test this feature
  As an explicit system actor
  I want to verify this behaviour

Scenario: Verify we can go to 'http://localhost:9000' with a mix selenium sikuli
 Given launch the chrome navigator
  When i goto to $urlWeb
  When i click on '#show'
  Then store last result in file $storageProperties.outputFile001
  Then Title must contain $playSampleApp
  Given with sikuli capture desktop to $storageProperties.getOutputFile002() in png format
  Given Close browser driver
  