require "test_helper"

class Api::Vi::EventControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_vi_event_index_url
    assert_response :success
  end
end
