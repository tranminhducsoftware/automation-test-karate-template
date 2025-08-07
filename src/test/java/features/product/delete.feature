Feature: Delete Product

  Scenario: Xóa sản phẩm theo ID
    Given url baseUrl + '/delete'
    And param id = 1
    When method delete
    Then status 200
    And match response != null
