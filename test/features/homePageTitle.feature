@smoke
Feature: Home Page Title

@westerndigital
Scenario: Page Title Westerndigital
  Given I open "https://www.westerndigital.com/" url
  Then Page title should be "Hard Drives, USB Drives, and Memory Cards | Western Digital"
  # When I wait "10" seconds

@handler
  Scenario: Page Title Handler
   Given I open "https://handler.by/" url
   Then Page title should be "Мебельный сервис | Мебельная фурнитура | Сообщество специалистов и партнёров"
  #  When I wait "10" seconds

@proz
  Scenario: Page Title Proz.com
   Given I open "https://www.proz.com/" url
   Then Page title should not be "Freelance translators & Translation companies | ProZ.com"
  #  When I wait "10" seconds

@so
Scenario Outline: Page titles
  Given I open "<URL>" url
  Then Page title should be "<Title>" 
  # When I wait "10" seconds
  
  
  Examples:
    | URL                             | Title |
    | https://www.proz.com/           | Freelance translators & Translation companies \| ProZ.com|
    | https://www.westerndigital.com/ | Hard Drives, USB Drives, and Memory Cards \| Western Digital  |