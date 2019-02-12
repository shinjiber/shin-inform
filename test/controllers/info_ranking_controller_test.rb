require 'test_helper'

class InfoRankingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get info_ranking_index_url
    assert_response :success
  end

end
