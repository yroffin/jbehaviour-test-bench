Feature: Launch a global story sample for testing all plugins of jbehaviour
  In order to test this feature
  As an explicit system actor
  I want to verify this global test
  #
  # inclusion of a file include in this local story
  # all register, declare and scenario feature ...
  # sequence order will be applied
  #
  Include 'src/main/resources/models/resources.story'
  Include 'src/main/resources/includes/use-web.story'
  Include 'src/main/resources/includes/sikuli-web.story'

Scenario: Main story board
	# Just for test
	Given wait for 2 seconds
