require "test_helper"

class DeadlinesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get deadlines_new_url
    assert_response :success
  end
end
