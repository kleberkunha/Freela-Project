require "test_helper"

class ColegaTradutorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @colega_tradutor = colega_tradutors(:one)
  end

  test "should get index" do
    get colega_tradutors_url
    assert_response :success
  end

  test "should get new" do
    get new_colega_tradutor_url
    assert_response :success
  end

  test "should create colega_tradutor" do
    assert_difference("ColegaTradutor.count") do
      post colega_tradutors_url, params: { colega_tradutor: { name: @colega_tradutor.name, url_page: @colega_tradutor.url_page } }
    end

    assert_redirected_to colega_tradutor_url(ColegaTradutor.last)
  end

  test "should show colega_tradutor" do
    get colega_tradutor_url(@colega_tradutor)
    assert_response :success
  end

  test "should get edit" do
    get edit_colega_tradutor_url(@colega_tradutor)
    assert_response :success
  end

  test "should update colega_tradutor" do
    patch colega_tradutor_url(@colega_tradutor), params: { colega_tradutor: { name: @colega_tradutor.name, url_page: @colega_tradutor.url_page } }
    assert_redirected_to colega_tradutor_url(@colega_tradutor)
  end

  test "should destroy colega_tradutor" do
    assert_difference("ColegaTradutor.count", -1) do
      delete colega_tradutor_url(@colega_tradutor)
    end

    assert_redirected_to colega_tradutors_url
  end
end
