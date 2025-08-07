Feature: User Register

  Scenario: Đăng ký user mới
    Given url baseUrl + '/post'
    And request { username: 'newuser', password: '123456', email: 'a@b.com' }
    When method post
    Then status 200
    And match response.json != null
