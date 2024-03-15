require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get static_pages_top_url
    assert_response :success
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
  end
end
