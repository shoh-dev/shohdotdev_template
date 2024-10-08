# Create a command to test give folder (ex: test folder1) (command is: flutter test test/core/models/failure)
# Usage: make test folder=folder1
ftest:
	flutter test $(folder)


# for testing by test name (ex: make test name=Failure) no "" or '' or ()
ftestname:
	flutter test --plain-name=$(name)

fclean:
	flutter clean
	flutter pub get


fbuild:
	fvm dart run build_runner build --delete-conflicting-outputs

fwatch:
	fvm dart run build_runner watch --delete-conflicting-outputs