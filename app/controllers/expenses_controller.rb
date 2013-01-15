class ExpensesController < ApplicationController
  before_filter :strip_amount, only: [:create]

  def index
    @expenses = Expense.all
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(params[:expense])
    if @expense.save
      redirect_to expenses_path
    else
      render 'new'
    end
  end

  private
  def strip_amount
    params[:expense][:amount] = string_to_dollars(params[:expense][:amount])
  end
end
