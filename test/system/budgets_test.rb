require "application_system_test_case"

class BudgetsTest < ApplicationSystemTestCase
  setup do
    @budget = budgets(:one)
  end

  test "visiting the index" do
    visit budgets_url
    assert_selector "h1", text: "Budgets"
  end

  test "creating a Budget" do
    visit budgets_url
    click_on "New Budget"

    fill_in "Amount", with: @budget.amount
    fill_in "Currency", with: @budget.currency_id
    fill_in "Name", with: @budget.name
    fill_in "Project duration", with: @budget.project_duration
    fill_in "Purpose", with: @budget.purpose
    fill_in "Source of fund", with: @budget.source_of_fund
    click_on "Create Budget"

    assert_text "Budget was successfully created"
    click_on "Back"
  end

  test "updating a Budget" do
    visit budgets_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @budget.amount
    fill_in "Currency", with: @budget.currency_id
    fill_in "Name", with: @budget.name
    fill_in "Project duration", with: @budget.project_duration
    fill_in "Purpose", with: @budget.purpose
    fill_in "Source of fund", with: @budget.source_of_fund
    click_on "Update Budget"

    assert_text "Budget was successfully updated"
    click_on "Back"
  end

  test "destroying a Budget" do
    visit budgets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Budget was successfully destroyed"
  end
end
