require 'test_helper'

class ZasekiControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get zaseki_new_url
    assert_response :success
  end

end
