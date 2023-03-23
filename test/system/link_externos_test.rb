require "application_system_test_case"

class LinkExternosTest < ApplicationSystemTestCase
  setup do
    @link_externo = link_externos(:one)
  end

  test "visiting the index" do
    visit link_externos_url
    assert_selector "h1", text: "Link externos"
  end

  test "should create link externo" do
    visit link_externos_url
    click_on "New link externo"

    fill_in "Title", with: @link_externo.title
    fill_in "Url page", with: @link_externo.url_page
    click_on "Create Link externo"

    assert_text "Link externo was successfully created"
    click_on "Back"
  end

  test "should update Link externo" do
    visit link_externo_url(@link_externo)
    click_on "Edit this link externo", match: :first

    fill_in "Title", with: @link_externo.title
    fill_in "Url page", with: @link_externo.url_page
    click_on "Update Link externo"

    assert_text "Link externo was successfully updated"
    click_on "Back"
  end

  test "should destroy Link externo" do
    visit link_externo_url(@link_externo)
    click_on "Destroy this link externo", match: :first

    assert_text "Link externo was successfully destroyed"
  end
end
