Feature: SuccessfulSignin 
This feature file cover all the scenarios of successful login

Scenario Outline: Sign in with valid username and password
Given User is on the SigninPage
When User enters valid "<username>" and "<password>" and clicks login button
Then User is logged in and landed on Homepage

Scenario: Create a new account
Given The user clicks on Create account on SignIN Page
When The user clicks on Create account on SignIN Page
Then The user continues to land on the homepage


Scenario: Rest the password
Given The user clicks on forgot password
And clicks on Reset Password after entering email id
And fetches the verification code from the inbox of entered emailid
When The user clicks on Change password after entering verification code along with new password
Then The clicks on Continue on Signed in As Page
And lands on Homepage


Scenario: Sign in with valid username and password
Given The user is on the SigninPage
When The user enters valid username and Password 
And clicks login button
Then The user is logged in 
And lands on Homepage



Scenario: Sign in with Google Account
Given The user selects Continue with Google option on signin page
When The user enters valid google username and Password 
And clicks continue with google
Then The clicks on Continue on Signed in As Page
And lands on Homepage after successful login lands



Scenario: Sign in With Facebook Account
Given The user selects Continue with facebook option to signin
When The user logsin entering valid FB username and Password
And clicks continue with Facebook
Then The clicks on Continue on Signed in As Page
And lands on Homepage after successful login


Scenario: Sign in With Apple Account
Given The user selects signin with AppleID
When The user enters invalid APPLE ID and Password and clicks continue
Then The clicks on Continue on Signed in As Page
And lands on Homepage after successful login

Examples:
	| username | password |
	| testsample.maha@gmail.com  | Testing@01|