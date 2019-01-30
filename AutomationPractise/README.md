# Automation Practise Project

In this project I exercised Robot Framework to test Web UI.
I used PyCharm editor to write these files.

Run command for these tests is:     robot -d results tests/AutomationPractise.robot

I ran these tests successfully using Firefox as browser.
If I use chrome instead, some tests fail.
You can read html-reports and see screenshots of fails in the Results-directory.

To change browser, just change ${BROWSER} = firefox to chrome in *** Variables *** section in the file AutomationPractise.robot.

The tested url is ${URL} =  http://automationpractice.com/index.php
