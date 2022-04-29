class ReportsController < ApplicationController
  def index
  end

  def costings
    @expense_categories = ExpenseCategory.all
  end
end
