require 'test_helper'

class LikeControllerTest < ActionDispatch::IntegrationTest
  test "should get only:update" do
    get like_only:update_url
    assert_response :success
  end

end
