require 'test_helper'

class PopcircleControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get popcircle_show_url
    assert_response :success
  end

end
