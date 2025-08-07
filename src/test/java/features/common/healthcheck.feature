Feature: Health Check

  Scenario: Kiểm tra server online
    Given url baseUrl + '/get'
    When method get
    Then status 200
