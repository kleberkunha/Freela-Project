require "test_helper"

class LinkExternosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @link_externo = link_externos(:one)
  end

  test "should get index" do
    get link_externos_url
    assert_response :success
  end

  test "should get new" do
    get new_link_externo_url
    assert_response :success
  end

  test "should create link_externo" do
    assert_difference("LinkExterno.count") do
      post link_externos_url, params: { link_externo: { title: @link_externo.title, url_page: @link_externo.url_page } }
    end

    assert_redirected_to link_externo_url(LinkExterno.last)
  end

  test "should show link_externo" do
    get link_externo_url(@link_externo)
    assert_response :success
  end

  test "should get edit" do
    get edit_link_externo_url(@link_externo)
    assert_response :success
  end

  test "should update link_externo" do
    patch link_externo_url(@link_externo), params: { link_externo: { title: @link_externo.title, url_page: @link_externo.url_page } }
    assert_redirected_to link_externo_url(@link_externo)
  end

  test "should destroy link_externo" do
    assert_difference("LinkExterno.count", -1) do
      delete link_externo_url(@link_externo)
    end

    assert_redirected_to link_externos_url
  end
end
