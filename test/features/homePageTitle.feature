@smoke
Feature: Home Page Title

@westerndigital
Scenario: Page Title
  Given I open "https://www.westerndigital.com/" url
  Then Page title should be "Hard Drives, USB Drives, and Memory Cards | Western Digital"
   And Page title should not be "Hard Drives, USB Drives, and Memory Cards | Western Digital"
  When I wait "10" seconds

@bash
  Scenario: Page Title
   Given I open "https://bash.im" url
   Then Page title should be "Цитатник рунета"
   When I wait "10" seconds

@epam
  Scenario: Page Title EPAM
   Given I open "https://www.epam.com" url
   Then Page title should not be "Цитатник рунета"
   When I wait "10" seconds

@so
Scenario Outline: Page titles
  Given I open "<URL>" url
  # When I wait "10" seconds
  Then Page title should be "<Title>"
  

  Examples:
    | URL                            | Title |
    | https://www.handler.by/        | Мебельный сервис \| Мебельная фурнитура \| Сообщество специалистов и партнёров|
    | https://bash.im                | Цитатник Рунета  |