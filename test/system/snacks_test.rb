require "application_system_test_case"

class SnacksTest < ApplicationSystemTestCase
  setup do
    @snack = snacks(:one)
  end

  test "visiting the index" do
    visit snacks_url
    assert_selector "h1", text: "Snacks"
  end

  test "should create snack" do
    visit snacks_url
    click_on "New snack"

    fill_in "Food", with: @snack.food_id
    fill_in "Title", with: @snack.title
    click_on "Create Snack"

    assert_text "Snack was successfully created"
    click_on "Back"
  end

  test "should update Snack" do
    visit snack_url(@snack)
    click_on "Edit this snack", match: :first

    fill_in "Food", with: @snack.food_id
    fill_in "Title", with: @snack.title
    click_on "Update Snack"

    assert_text "Snack was successfully updated"
    click_on "Back"
  end

  test "should destroy Snack" do
    visit snack_url(@snack)
    click_on "Destroy this snack", match: :first

    assert_text "Snack was successfully destroyed"
  end
end
