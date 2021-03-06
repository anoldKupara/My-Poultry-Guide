require "application_system_test_case"

class InventoriesTest < ApplicationSystemTestCase
  setup do
    @inventory = inventories(:one)
  end

  test "visiting the index" do
    visit inventories_url
    assert_selector "h1", text: "Inventories"
  end

  test "creating a Inventory" do
    visit inventories_url
    click_on "New Inventory"

    fill_in "Currency", with: @inventory.currency_id
    fill_in "Expiry date", with: @inventory.expiry_date
    fill_in "Item name", with: @inventory.item_name
    fill_in "Purpose", with: @inventory.purpose
    fill_in "Quantity", with: @inventory.quantity
    fill_in "Value", with: @inventory.value
    click_on "Create Inventory"

    assert_text "Inventory was successfully created"
    click_on "Back"
  end

  test "updating a Inventory" do
    visit inventories_url
    click_on "Edit", match: :first

    fill_in "Currency", with: @inventory.currency_id
    fill_in "Expiry date", with: @inventory.expiry_date
    fill_in "Item name", with: @inventory.item_name
    fill_in "Purpose", with: @inventory.purpose
    fill_in "Quantity", with: @inventory.quantity
    fill_in "Value", with: @inventory.value
    click_on "Update Inventory"

    assert_text "Inventory was successfully updated"
    click_on "Back"
  end

  test "destroying a Inventory" do
    visit inventories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inventory was successfully destroyed"
  end
end
