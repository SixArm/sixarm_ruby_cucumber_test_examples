Scenario: sign in is valid

Given Preconditions
* I am a user
* I am on the home page

When Workflow
* I sign in with valid credentials

Then Postconditions
* I should see "Hello"


Scenario: sign in is invalid

Given Preconditions
* I am a user
* I am on the home page

When Workflow
* I sign in with invalid credentials

Then Postconditions
* I should see "Sorry"
