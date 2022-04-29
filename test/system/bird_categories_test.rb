require "application_system_test_case"

class BirdCategoriesTest < ApplicationSystemTestCase
  setup do
    @bird_category = bird_categories(:one)
  end

  test "visiting the index" do
    visit bird_categories_url
    assert_selector "h1", text: "Bird Categories"
  end

  test "creating a Bird category" do
    visit bird_categories_url
    click_on "New Bird Category"

    fill_in "Breed", with: @bird_category.breed
    fill_in "Name", with: @bird_category.name
    fill_in "Purpose", with: @bird_category.purpose
    click_on "Create Bird category"

    assert_text "Bird category was successfully created"
    click_on "Back"
  end

  test "updating a Bird category" do
    visit bird_categories_url
    click_on "Edit", match: :first

    fill_in "Breed", with: @bird_category.breed
    fill_in "Name", with: @bird_category.name
    fill_in "Purpose", with: @bird_category.purpose
    click_on "Update Bird category"

    assert_text "Bird category was successfully updated"
    click_on "Back"
  end

  test "destroying a Bird category" do
    visit bird_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bird category was successfully destroyed"
  end
end
