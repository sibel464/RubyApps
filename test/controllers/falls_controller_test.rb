require "test_helper"

class FallsControllerTest < ActionDispatch::IntegrationTest
  test "should get detect" do
    get falls_detect_url
    assert_response :success
  end
end
