Feature: Devise features
  Testing the functionality of devise

Scenario: A new User should be able to register
  Given User has no account
  When they click register and submit details
  Then they should be routed and welcomed to the home page

Scenario: A User with an account should be able to log in.
  Given User is logged out
  When they click login and submit their details
  Then they should be logged into and welcomed to the home page

Scenario: A logged in User should be able to log out.
  Given User is logged in
  When they click logout
  Then they should be logged out the app