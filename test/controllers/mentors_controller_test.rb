require "test_helper"

class MentorsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get mentors_show_url
    assert_response :success
  end
end
