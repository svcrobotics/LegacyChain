require "test_helper"

class TestamentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get testament_index_url
    assert_response :success
  end
end
