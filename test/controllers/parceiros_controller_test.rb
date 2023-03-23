require "test_helper"

class ParceirosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parceiro = parceiros(:one)
  end

  test "should get index" do
    get parceiros_url
    assert_response :success
  end

  test "should get new" do
    get new_parceiro_url
    assert_response :success
  end

  test "should create parceiro" do
    assert_difference("Parceiro.count") do
      post parceiros_url, params: { parceiro: { name: @parceiro.name, url_page: @parceiro.url_page } }
    end

    assert_redirected_to parceiro_url(Parceiro.last)
  end

  test "should show parceiro" do
    get parceiro_url(@parceiro)
    assert_response :success
  end

  test "should get edit" do
    get edit_parceiro_url(@parceiro)
    assert_response :success
  end

  test "should update parceiro" do
    patch parceiro_url(@parceiro), params: { parceiro: { name: @parceiro.name, url_page: @parceiro.url_page } }
    assert_redirected_to parceiro_url(@parceiro)
  end

  test "should destroy parceiro" do
    assert_difference("Parceiro.count", -1) do
      delete parceiro_url(@parceiro)
    end

    assert_redirected_to parceiros_url
  end
end
