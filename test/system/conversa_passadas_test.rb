require "application_system_test_case"

class ConversaPassadasTest < ApplicationSystemTestCase
  setup do
    @conversa_passada = conversa_passadas(:one)
  end

  test "visiting the index" do
    visit conversa_passadas_url
    assert_selector "h1", text: "Conversa passadas"
  end

  test "should create conversa passada" do
    visit conversa_passadas_url
    click_on "New conversa passada"

    fill_in "Created by", with: @conversa_passada.created_by
    fill_in "Description", with: @conversa_passada.description
    fill_in "Title", with: @conversa_passada.title
    click_on "Create Conversa passada"

    assert_text "Conversa passada was successfully created"
    click_on "Back"
  end

  test "should update Conversa passada" do
    visit conversa_passada_url(@conversa_passada)
    click_on "Edit this conversa passada", match: :first

    fill_in "Created by", with: @conversa_passada.created_by
    fill_in "Description", with: @conversa_passada.description
    fill_in "Title", with: @conversa_passada.title
    click_on "Update Conversa passada"

    assert_text "Conversa passada was successfully updated"
    click_on "Back"
  end

  test "should destroy Conversa passada" do
    visit conversa_passada_url(@conversa_passada)
    click_on "Destroy this conversa passada", match: :first

    assert_text "Conversa passada was successfully destroyed"
  end
end
