require "test_helper"

class AdmControllerTest < ActionDispatch::IntegrationTest
  test "should get admin_page" do
    get adm_admin_page_url
    assert_response :success
  end
end
