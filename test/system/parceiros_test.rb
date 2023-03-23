require "application_system_test_case"

class ParceirosTest < ApplicationSystemTestCase
  setup do
    @parceiro = parceiros(:one)
  end

  test "visiting the index" do
    visit parceiros_url
    assert_selector "h1", text: "Parceiros"
  end

  test "should create parceiro" do
    visit parceiros_url
    click_on "New parceiro"

    fill_in "Name", with: @parceiro.name
    fill_in "Url page", with: @parceiro.url_page
    click_on "Create Parceiro"

    assert_text "Parceiro was successfully created"
    click_on "Back"
  end

  test "should update Parceiro" do
    visit parceiro_url(@parceiro)
    click_on "Edit this parceiro", match: :first

    fill_in "Name", with: @parceiro.name
    fill_in "Url page", with: @parceiro.url_page
    click_on "Update Parceiro"

    assert_text "Parceiro was successfully updated"
    click_on "Back"
  end

  test "should destroy Parceiro" do
    visit parceiro_url(@parceiro)
    click_on "Destroy this parceiro", match: :first

    assert_text "Parceiro was successfully destroyed"
  end
end
