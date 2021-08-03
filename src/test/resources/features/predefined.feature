@predefined
Feature: Smoke steps

  @predefined1
  Scenario Outline: Predefined steps for Google
    Given I open url "<url>"
    Then I should see page title as "<title>"
    Then element with xpath "<xpath_input>" should be present
    When I type "Behavior Driven Development" into element with xpath "<xpath_input>"
    Then I click on element using JavaScript with xpath "<xpath_search>"
    Then I wait for element with xpath "<xpath_result>" to be present
    Then element with xpath "<xpath_result>" should contain text "<text>"

    Examples:
    | url                   | title       | xpath_input           | xpath_search               | xpath_result       | text     |
    | https://google.com    | Google      | //input[@name='q']    | (//input[@name='btnK'])[1] | //*[@id='res']     | Cucumber |
    | https://onesearch.com | OneSearch   | //input[@id='yschsp'] | //div[@title='Search']     | //*[@id='results'] | Cucumber |

#  @predefined2
#  Scenario: Predefined steps for OneSearch
#    Given I open url "https://onesearch.com"
#    Then I should see page title as "OneSearch"
#    Then element with xpath "//input[@id='yschsp']" should be present
#    When I type "Behavior Driven Development" into element with xpath "//input[@id='yschsp']"
#    Then I click on element with xpath "//div[@title='Search']"
#    Then I wait for element with xpath "//*[@id='results']" to be present
#    Then element with xpath "//*[@id='results']" should contain text "Cucumber"
#    And I wait for 2 sec