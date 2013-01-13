class ExpensesController < ApplicationController

  def index
    @expenses = Expense.all
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(params[:expense])
    if (@expense.save)
      redirect_to expenses_path
    else
      render 'new'
    end
  end
end
