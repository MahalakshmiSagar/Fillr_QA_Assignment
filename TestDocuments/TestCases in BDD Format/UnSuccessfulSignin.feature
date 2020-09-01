Feature: UnsuccessfulSignin 
This feature file cover all the scenarios of un successful login



Scenario: sign in with invalid username and password
Given The user is on the SigninPage
When The user enters invalid username and Password
And clicks login button
Then The user sees error message on the signin page


Scenario: Sign in with Invalid Google Account username
Given The user selects Continue with Google option on signin page
When The user enters invalid google username 
And clicks Next
Then The user sees error message under username textbox
"GIVEN 
WHEN 
THEN "


Scenario: Sign in with Invalid Google Account password
Given 
When 
Then 
"GIVEN The user selects Continue with Facebook option on signin page
WHEN The user enters invalid FB username and Password and clicks login
THEN The user sees error message under password textbox"


Scenario: Sign in with Invalid Facebook Account

Given 
When 
Then 
"GIVEN The user selects Continue with facebook option to signin
WHEN The user clicks login entering invalid FB username and Password
THEN The user sees an error on the fb login page "


Scenario: Signs in With invalid AppleID

Given 
When 
Then 
"GIVEN The user selects Continue with already connected facebok account option to signin
WHEN The user enters valid FB username and Password and clicks continue withFacebook
THEN The user see an error message on the sigin screen"

Scenario: 
Given 
When 
Then 

Examples:
	| username | password |
	| testsample.maha@gmail.com  | Testing@01|