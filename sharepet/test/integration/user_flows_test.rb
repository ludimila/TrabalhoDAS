require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  test "List" do
    https!
    get "/animals"
    assert_response :success
  end
end
