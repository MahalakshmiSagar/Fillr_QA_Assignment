Feature: Success Signin feature

Scenario Outline: Sign in with valid username and password

Given User is on the SigninPage
When User enters valid "<username>" and "<password>" and clicks login button
Then User is logged in and landed on Homepage

Examples:
	| username | password |
	| testsample.maha@gmail.com  | Testing@01|
		
