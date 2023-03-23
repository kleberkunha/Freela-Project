require "test_helper"

class NaImprensasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @na_imprensa = na_imprensas(:one)
  end

  test "should get index" do
    get na_imprensas_url
    assert_response :success
  end

  test "should get new" do
    get new_na_imprensa_url
    assert_response :success
  end

  test "should create na_imprensa" do
    assert_difference("NaImprensa.count") do
      post na_imprensas_url, params: { na_imprensa: { description: @na_imprensa.description, title: @na_imprensa.title } }
    end

    assert_redirected_to na_imprensa_url(NaImprensa.last)
  end

  test "should show na_imprensa" do
    get na_imprensa_url(@na_imprensa)
    assert_response :success
  end

  test "should get edit" do
    get edit_na_imprensa_url(@na_imprensa)
    assert_response :success
  end

  test "should update na_imprensa" do
    patch na_imprensa_url(@na_imprensa), params: { na_imprensa: { description: @na_imprensa.description, title: @na_imprensa.title } }
    assert_redirected_to na_imprensa_url(@na_imprensa)
  end

  test "should destroy na_imprensa" do
    assert_difference("NaImprensa.count", -1) do
      delete na_imprensa_url(@na_imprensa)
    end

    assert_redirected_to na_imprensas_url
  end
end
