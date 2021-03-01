Feature: Website Navigation

Scenario: Going to page Commandemy.com
  Given that I am on Commandemy Home
  When I click on link "Who we are"
  Then the page should contain "Edmund Haselwanter"