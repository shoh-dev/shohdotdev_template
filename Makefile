# Create a command to test give folder (ex: test folder1) (command is: flutter test test/core/models/failure)
# Usage: make test folder=folder1
ftest:
	flutter test $(folder)

fclear:
	flutter clean