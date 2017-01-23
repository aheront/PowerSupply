require 'test_helper'

class VgasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vgas_index_url
    assert_response :success
  end

  test "should get new" do
    get vgas_new_url
    assert_response :success
  end

  test "should get create" do
    get vgas_create_url
    assert_response :success
  end

end
