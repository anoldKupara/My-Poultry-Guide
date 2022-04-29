require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reports_index_url
    assert_response :success
  end

  test "should get costings" do
    get reports_costings_url
    assert_response :success
  end

end
