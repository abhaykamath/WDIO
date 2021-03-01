Feature: WDIO demo app testing
  Scenario Outline: When on the Login screen display warning message when logging in with invalid credentials
    Given I'm on the login screen
    When I try to log in with credentials; email: '<Email>' and password: '<Password>'
    Then app displays a message that the credentials are invalid

    Examples:
      | Email       | Password  |
      | user@123456 | 12346.346 |

  Scenario: When on the Login screen display login successfully, when entering valid credentials
    Given I'm on the login screen
    When I log in with the user'Administrator'
    Then app displays alert of successful login

  Scenario: When on the Swipe screen Swipe the carousel from first card to left
    Given I'm on the swipe screen
    When the app displays card with nthCard 'first' and text 'Fully Open Source'
      And I swipe to the left
    Then the app displays card with nthCard 'active' and text 'Creat community'

  Scenario: When on the swipe screen Swipe the carousel from second card to left
    Given I'm on the swipe screen
    When I swipe to the left
    Then the app displays card with nthCard 'active' and text 'JS.Foundation'
  
  Scenario: Swipe the carousel from third card to left
    When I swipe to the left
    Then the app displays card with nthCard 'active' and text 'Support Videos'

  Scenario: When on the Forms screen type in the text field
    Given I'm on the forms screen
    When I type 'Hello World' in the text box
    Then the text that was typed is displayed

  Scenario: When on the Forms screen select options from a Dropdown list
    Given I'm on the forms screen
    When I select the 'This app is awesome' option from the list
    Then the text 'Dropdown This app is awesome'is displayed
    When I select the 'webdriver.io is awesome' option from the list
    Then the text 'Dropdown webdriver.io is awesome'is displayed
    When I select the 'Appium is awesome' option from the list
    Then the text 'Dropdown Appium is awesome'is displayed
  
  Scenario: Open the activation alert and close it with the Ask me later button
    When I click the activate button
    Then the app displays the activated alert
      And I click on the option 'Ask me later'
    Then the app hide the activated alert

