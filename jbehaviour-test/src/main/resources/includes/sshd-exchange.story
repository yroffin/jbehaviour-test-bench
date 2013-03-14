Feature: push the file 'computers.csv' on remote host
  In order to test this feature
  As an explicit system actor
  I want to verify this behaviour

Scenario: Push the file 'computers.csv' on remote host
	# SFTP feature testing
	Given with remote create sftp resource $sftpResource identified by sftp@localhost
	Given with remote list directory '/etc' on sftp@localhost
	Then  with remote check if '/etc/passwd' exist on sftp@localhost
	When  with remote put 'src/main/resources/data/computers.csv' to '/tmp/computers.csv' on sftp@localhost
	# SFTP feature testing
	Given with remote create ssh resource $sshdResource identified by ssh@localhost
	Given with remote execute command 'dir' on ssh@localhost
