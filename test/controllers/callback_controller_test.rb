require 'test_helper'

class CallbackControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get callback_index_url
    assert_response :success
  end

  test "should get recieved_data" do
    get callback_recieved_data_url
    assert_response :success
  end

end
