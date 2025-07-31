require "test_helper"

class HeirsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get heirs_index_url
    assert_response :success
  end
end
