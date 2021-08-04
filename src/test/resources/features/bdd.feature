@market
Feature: Market page - Cucumber Scenarios

  Background:
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title contains "Get a Quote"

  @market1
  Scenario: Validate responsive UI behavior
    When I resize window to 1920 and 1080
    Then element with xpath "//b[@id='location']" should be displayed
    Then element with xpath "//b[@id='currentDate']" should be displayed
    Then element with xpath "//b[@id='currentTime']" should be displayed
    When I resize window to 1024 and 768
    Then element with xpath "//b[@id='location']" should be displayed
    Then element with xpath "//b[@id='currentDate']" should be displayed
    Then element with xpath "//b[@id='currentTime']" should be displayed
    When I resize window to 375 and 667
    Then element with xpath "//b[@id='location']" should not be displayed
    Then element with xpath "//b[@id='currentDate']" should not be displayed
    Then element with xpath "//b[@id='currentTime']" should not be displayed

  @market2
  Scenario: Validate Username input field behavior
    When I type "A" into element with xpath "//input[@name='username']"
    And I click on element with xpath "//*[@id='formSubmit']"
    Then element with xpath "//*[@id='username-error']" should contain text "at least 2 characters"
    When I clear element with xpath "//input[@name='username']"
    Then element with xpath "//*[@id='username-error']" should contain text "field is required"
    When I type "AB" into element with xpath "//input[@name='username']"
    Then element with xpath "//*[@id='username-error']" should not be displayed

    @market3
    Scenario: Validate that email field accepts only valid email addresses
      When I type "1" into element with xpath "//input[@name='email']"
      And I click on element with xpath "//*[@id='formSubmit']"
      Then element with xpath "//*[@id='email-error']" should contain text "enter a valid email"
#      Then I clear element with xpath "//input[@name='email']"
#      When I type "1@2" into element with xpath "//input[@name='email']"
#      And I click on element with xpath "//*[@id='formSubmit']"
#      Then element with xpath "//*[@id='email-error']" should contain text "enter a valid email"
      When I clear element with xpath "//input[@name='email']"
      Then element with xpath "//*[@id='email-error']" should contain text "field is required"
      When I type "1@2.3" into element with xpath "//input[@name='email']"
      Then element with xpath "//*[@id='email-error']" should not be displayed