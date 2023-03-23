require "application_system_test_case"

class NaImprensasTest < ApplicationSystemTestCase
  setup do
    @na_imprensa = na_imprensas(:one)
  end

  test "visiting the index" do
    visit na_imprensas_url
    assert_selector "h1", text: "Na imprensas"
  end

  test "should create na imprensa" do
    visit na_imprensas_url
    click_on "New na imprensa"

    fill_in "Description", with: @na_imprensa.description
    fill_in "Title", with: @na_imprensa.title
    click_on "Create Na imprensa"

    assert_text "Na imprensa was successfully created"
    click_on "Back"
  end

  test "should update Na imprensa" do
    visit na_imprensa_url(@na_imprensa)
    click_on "Edit this na imprensa", match: :first

    fill_in "Description", with: @na_imprensa.description
    fill_in "Title", with: @na_imprensa.title
    click_on "Update Na imprensa"

    assert_text "Na imprensa was successfully updated"
    click_on "Back"
  end

  test "should destroy Na imprensa" do
    visit na_imprensa_url(@na_imprensa)
    click_on "Destroy this na imprensa", match: :first

    assert_text "Na imprensa was successfully destroyed"
  end
end
