require 'test_helper'

class InfosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get infos_index_url
    assert_response :success
  end

  test "should get create" do
    get infos_create_url
    assert_response :success
  end

  test "should get destroy" do
    get infos_destroy_url
    assert_response :success
  end

end
