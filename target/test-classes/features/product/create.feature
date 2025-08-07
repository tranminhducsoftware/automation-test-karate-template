Feature: Product Create

  Scenario: Tạo sản phẩm mới
    Given url baseUrl + '/post'
    And request { name: 'New Product', price: 100 }
    When method post
    Then status 200
    And match response.json != null
