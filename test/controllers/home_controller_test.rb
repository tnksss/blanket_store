require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_url # Testa se a página inicial está acessível
    assert_response :success # garante que o servidor respondeu com sucesso (HTTP 200)
  end
end
