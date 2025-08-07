Feature: User Login

  @smoke
  Scenario: Login thành công
    Given url baseUrl + '/post'
    And request { username: 'admin', password: '123456' }
    When method post
    Then status 200
    And match response.json != null
