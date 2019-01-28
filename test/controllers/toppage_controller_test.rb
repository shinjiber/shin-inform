require 'test_helper'

class ToppageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get toppage_index_url
    assert_response :success
  end

  test "should get show" do
    get toppage_show_url
    assert_response :success
  end

end
