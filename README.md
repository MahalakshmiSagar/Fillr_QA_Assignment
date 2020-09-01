# The approach to testing Signin page of [realestate.com.au](#https://accounts.realestate.com.au/login?client_id=2fb06dqab95hci46dgldph0382&redirect_uri=https://www.realestate.com.au/auth&response_type=code&state=dnJ-VBXGZc8PT0G0K6YJ5GGd2ko5YwK_P74rHqA5pM5cF02KMbRioXpTvlihPawryN0bJeoESTCCbXvSv-3d4bsT-F3OcO-Nj-rc5V8uxwD6_SLYAZogIWR5AgJK4sJ-bmoSdV-VMyZx5MBfCOaYqri_Syrpj4Lc4LbMOba6Hy5xqOEZ)

The following document has a high-level Test plan for the testing of **Signin Page** of the application under test.



#### Table of contents
* [Introduction](#Introduction)
* [Scope](#Scope)
    * [Features to Be Tested](#Features-to-Be-Tested)
    * [Features Not to Be Tested](#Features-Not-to-Be-Tested)
* [Approach](Approach)
* [Pass/Fail Criteria](#Pass/Fail-Criteria)
* [Suspension Criteria and Resumption Requirements](#Suspension-Criteria-and-Resumption-Requirements)
* [Test Deliverables](#Test-Deliverables)
* [Test Activities](#Test-Activities)
* [Environmental Needs](#Environmental-Needs)
* [Responsibilities](#Responsibilities)
* [Schedule](#Schedule)
* [Risks and Contingencies](#Risks-and-Contingencies)
* [Approvals](#Approvals)

## Test Plan

### Introduction

The sign in page is an important page on the site as it facilitates the access to the web application through authentication process, hence has lots of traffic. It offers Sign in through different channels and would be replacing the legacy sign in page.

In terms of architecture login page is built on JavaScript, the communication with database happens with the help of an API.


### Scope

The scope of this test project includes testing of Sign-In functionality of the [realestate.com.au](#https://accounts.realestate.com.au/login?client_id=2fb06dqab95hci46dgldph0382&redirect_uri=https://www.realestate.com.au/auth&response_type=code&state=dnJ-VBXGZc8PT0G0K6YJ5GGd2ko5YwK_P74rHqA5pM5cF02KMbRioXpTvlihPawryN0bJeoESTCCbXvSv-3d4bsT-F3OcO-Nj-rc5V8uxwD6_SLYAZogIWR5AgJK4sJ-bmoSdV-VMyZx5MBfCOaYqri_Syrpj4Lc4LbMOba6Hy5xqOEZ) application. The test cases will be written in BDD format using gherkin language. 
The functional tests will be executed Manually and the regression suit will be automated.  

Example: 

```Gherkin
Feature: Success Signin feature

Scenario Outline: Sign in with valid username and password

Given User is on the SigninPage
When User enters valid "<username>" and "<password>" and clicks login button
Then User is logged in and landed on Homepage

Examples:
	| username | password |
	| abc@gmail.com  | Testing@01|

```

#### Features to Be Tested
Below features will be tested:
##### Sign In 
- With new Account
- With reset password
- With registered username and password
- With Google Account
- With Facebook Account
- With AppleID

#### Features not to Be Tested
Below features will not be tested:
##### Create an Account
- On Login page with Facebook Page
- On Login page with Google Page
- On Login page with Apple Page 

### Approach
The following test approach is followed to meet the objective of this project.
##### Functional Testing:
The functional test will be carried out manually.
##### Automated Regression Testing: 
The Automation setup would execute regression suite of the functional test cases.

### Item Pass/Fail Criteria
The following requirements needs to be met to consider a test to be pass. Otherwise it is considered as Fail.
- The actual result should match the expected result of each test case.
  

### Suspension Criteria and Resumption Requirements
The testing activity would be suspended under the following conditions:
- If/When the Sign In page is down due to the server down time.
- If/When functionality required to test is unavailable due to not being implemented. 

The testing activity would be resumed when:
- If/When the server is up and the SignIn page loads.
- If/When the required functionality is implemented and is available for testing.
  

### Test Deliverables
The following test artifacts will be delivered:
- Test Plan
- Test Cases
- Defect Reports
- Test Summary Reports
- Automation setup

###### Note: The URL under test blocks Selenium commands. However a sample script is created on a high level framework (i.e Page object model is not followed in terms of framework structure)

### Test Activities
The below activities will be carried our by the test team
- Analysing the test requirement
- Writing of Test Cases
- Test Execution
- Defect identification and logging/documenting
- Development of test automation setup
- Writing of Automation test scripts

### Environmental Needs
The following need to be set up before the test execution could be started:
- Workstation with internet access
- Browsers installed : Chrome / Firefox / Safari
- Test data (Test accounts on Realestate, google, facebook and Apple)

### Responsibilities
This project will have a single test resource hence all the responsibilites will be rendered by the beforementioned resource.  

### Schedule
Below are the schedule for each type of testing:



________________________________________

Types of testing | Test Coverage | Due Date
------------ | ------------- | -------------
Manual Testing  | 100% | 2-Sept-20 
Automation Tests  | TBD | 2-Sept-20


#### Risks and Contingencies
TBD

#### Approvals
This plan needs to be approved by the following:

________________________________________

Name | Designation | Approval Status
------------ | ------------- | -------------
Fillr  | Test Manager | Pending 
Fillr  | Test Manager | Pending 



*NOTE*: In order to set up the Automation project, Clone the GIT repository on you local IDE and run Mvn clean install. 
The pre-req: Make sure the machine has Java installed and Java_Home Env variable set up. Maven downloaded and M2_Home Env variable is set


________________________________________

