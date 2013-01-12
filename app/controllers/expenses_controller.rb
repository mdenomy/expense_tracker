class ExpensesController < ApplicationController

  def index
    @expenses = Expense.all
  end

  def new

  end
end
