require 'test_helper'

class CpusControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cpus_new_url
    assert_response :success
  end

  test "should get create" do
    get cpus_create_url
    assert_response :success
  end

end
