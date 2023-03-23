require "application_system_test_case"

class ColegaTradutorsTest < ApplicationSystemTestCase
  setup do
    @colega_tradutor = colega_tradutors(:one)
  end

  test "visiting the index" do
    visit colega_tradutors_url
    assert_selector "h1", text: "Colega tradutors"
  end

  test "should create colega tradutor" do
    visit colega_tradutors_url
    click_on "New colega tradutor"

    fill_in "Name", with: @colega_tradutor.name
    fill_in "Url page", with: @colega_tradutor.url_page
    click_on "Create Colega tradutor"

    assert_text "Colega tradutor was successfully created"
    click_on "Back"
  end

  test "should update Colega tradutor" do
    visit colega_tradutor_url(@colega_tradutor)
    click_on "Edit this colega tradutor", match: :first

    fill_in "Name", with: @colega_tradutor.name
    fill_in "Url page", with: @colega_tradutor.url_page
    click_on "Update Colega tradutor"

    assert_text "Colega tradutor was successfully updated"
    click_on "Back"
  end

  test "should destroy Colega tradutor" do
    visit colega_tradutor_url(@colega_tradutor)
    click_on "Destroy this colega tradutor", match: :first

    assert_text "Colega tradutor was successfully destroyed"
  end
end
