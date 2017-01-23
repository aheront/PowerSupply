require 'test_helper'

class CalcsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get calcs_index_url
    assert_response :success
  end

  test "should get new" do
    get calcs_new_url
    assert_response :success
  end

  test "should get create" do
    get calcs_create_url
    assert_response :success
  end

end
