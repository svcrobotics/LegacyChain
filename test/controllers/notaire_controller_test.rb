require "test_helper"

class NotaireControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get notaire_index_url
    assert_response :success
  end
end
