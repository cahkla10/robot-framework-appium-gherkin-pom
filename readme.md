# Installation

- Download Python from [here](https://www.python.org/downloads/) and install it.
- Check the installation using command ```python --version``` in terminal.
- Install robot framework using command ```pip install robotframework``` in terminal.
- Install Appium Library using command ```pip install --upgrade robotframework-appiumlibrary``` in terminal.
- Check the installation using command ```pip list``` in terminal. Robot framework and appium library should be in list.
- Download Node.js from [here](https://nodejs.org/en/download/) and install it.
- Install Appium using command ```npm install -g appium``` in terminal.
- Download Android SDK from [here](https://developer.android.com/studio/archive) and install it.
- Download JDK from [here](https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html) and install it.
- Config the environment variables for ANDROID_HOME, JAVA_HOME, and PATH for Android SDK and JDK ([example config](https://pojokqa.wordpress.com/2020/12/20/mengatur-environment-variable/)).
- Then clone this repository.


# Running

- This app automation using [Sauce Lab](https://github.com/saucelabs/sample-app-mobile/releases) app for dummy app.
- You can install the app or let the automation install the app.
- Config the <strong>app folder path</strong> in ```resources.robot``` file.
- Go to <strong>test_suites</strong> folder.

## Run Command

```robot <options> <test suite>```

| Common Options | Remarks |
|---------|---------|
|```-o```| XML output file. Given path, similarly as paths given to --log, --report, --xunit, and --debugfile, is relative to --outputdir unless given as an absolute path. Other output files are created based on XML output files after the test execution and XML outputs can also be further processed with Rebot tool. Can be disabled by giving a special value ```NONE```. Default: output.xml|
|```-l```|HTML log file. Can be disabled by giving a special value ```NONE```. Default: log.html Examples: ```--log mylog.html```, ````-l NONE``` |
|```-r```|HTML report file. Can be disabled with ```NONE``` similarly as ```--log```. Default: report.html|
|```-i```|Select tests by tag. Similarly as name with ```--test```,  tag is case and space insensitive and it is possible to use patterns with ```*```, ```?``` and ```[]``` as wildcards. Tags and patterns can also be combined together with ```AND```, ```OR```, and ```NOT``` operators. Examples: ```--include foo --include bar* --include fooANDbar*```|

For other options, we can see using command ```robot --help``` in terminal.

### Example
- ```robot -o ../output/output_login -l ../output/log/log_login -r ../output/report/report_login login_suite.robot```
- ```robot -o ../output/output_products -l ../output/log/log_products -r ../output/report/report_products -i product_sort products_suite.robot```

For other example, we can go to [Run Examples](https://dev.to/juperala/how-to-run-robot-framework-test-from-command-line-5aa)

[Appium Keyword References](https://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html)