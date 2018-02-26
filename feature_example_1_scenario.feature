Feature: Attempt to logging in with valid credentials

    Scenario: None existing user try to login

        Given I generate a random email address
        When I type random email
        When I type correct password
        When I click on 'Login'
        Then I should see the text 'Error: User not found'

    Scenario: User try to login with wrong password

        Given I create a user
        When I type correct email
        When I type random password
        When I click on 'Login'
        Then I should see the text 'Error: Incorrect password'