require "test_helper"

class ConversaPassadasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conversa_passada = conversa_passadas(:one)
  end

  test "should get index" do
    get conversa_passadas_url
    assert_response :success
  end

  test "should get new" do
    get new_conversa_passada_url
    assert_response :success
  end

  test "should create conversa_passada" do
    assert_difference("ConversaPassada.count") do
      post conversa_passadas_url, params: { conversa_passada: { created_by: @conversa_passada.created_by, description: @conversa_passada.description, title: @conversa_passada.title } }
    end

    assert_redirected_to conversa_passada_url(ConversaPassada.last)
  end

  test "should show conversa_passada" do
    get conversa_passada_url(@conversa_passada)
    assert_response :success
  end

  test "should get edit" do
    get edit_conversa_passada_url(@conversa_passada)
    assert_response :success
  end

  test "should update conversa_passada" do
    patch conversa_passada_url(@conversa_passada), params: { conversa_passada: { created_by: @conversa_passada.created_by, description: @conversa_passada.description, title: @conversa_passada.title } }
    assert_redirected_to conversa_passada_url(@conversa_passada)
  end

  test "should destroy conversa_passada" do
    assert_difference("ConversaPassada.count", -1) do
      delete conversa_passada_url(@conversa_passada)
    end

    assert_redirected_to conversa_passadas_url
  end
end
