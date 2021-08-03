@predefined
Feature: Smoke steps

  @predefined1
  Scenario Outline: Predefined steps for <title>
    Given I open url "<url>"
    Then I should see page title contains "<title>"
#    Then I should see page title as "<title>"
    Then element with xpath "<xpath_input>" should be present
    When I type "Behavior Driven Development" into element with xpath "<xpath_input>"
    Then I click on element using JavaScript with xpath "<xpath_search>"
    Then I wait for element with xpath "<xpath_result>" to be present
    Then element with xpath "<xpath_result>" should contain text "Cucumber"

    Examples:
    | url                           | title      | xpath_input                               | xpath_search                                        | xpath_result                                  |
    | https://google.com            | Google     | //input[@name='q']                        | (//input[@name='btnK'])[1]                          | //*[@id='res']                                |
    | https://onesearch.com         | OneSearch  | //input[@id='yschsp']                     | //div[@title='Search']                              | //*[@id='results']                            |
    | https://gibiru.com            | Gibiru     | //input[@id='q']                          | //button[@id='button-addon2']/i                     | //*[@id='web-results']                        |
    | https://duckduckgo.com        | DuckDuckGo | //input[@id='search_form_input_homepage'] | //input[@id='search_button_homepage']               | //*[@id='links_wrapper']                      |
    | https://swisscows.com         | Swisscows  | //input[@class='input-search']            | //button[@class='search-submit']                    | //div[@class='web-results']                   |
    | https://www.searchencrypt.com | Encrypt    | //input[@name='q']                        | //button[@type='submit']                            | //section[@class='serp__results container']   |
    | https://www.startpage.com     | Startpage  | //input[@id='q']                          | //button[@class='search-form-home__button-desktop'] | //div[contains(@class, 'show-results')]       |
    | https://www.yandex.com        | Yandex     | //input[@id='text']                       | //button[@type='submit']                            | //div[@class='content__left']                 |
    | https://www.ecosia.org        | Ecosia     | //input[@type='search']                   | //button[@type='submit']                            | //div[@class='mainline-results']              |
    | https://www.wiki.com/         | Wiki       | //input[@type='text']                     | //input[@type='submit']                             | //div[@class='gsc-resultsbox-visible']        |
    | https://www.givewater.com/    | Water      | //input[@id='site-search']                | //button[@type='submit']/i                          | //div[@class='layout__mainline']              |
    | https://ekoru.org/            | Ekoru      | //input[@id='fld_q']                      | //div[@id='btn_search']                             | //div[@id='div_results']                      |

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