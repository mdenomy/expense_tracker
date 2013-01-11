require 'spec_helper'

describe Expense do

  describe "validation" do
    it "negative amounts are not valid" do
        expense = Expense.new(amount: -1, description: "Some expense")
        expense.should_not be_valid
    end

    it "amount of zero is not valid" do
      expense = Expense.new(amount: 0, description: "Some expense")
      expense.should_not be_valid
    end

    it "positive amounts are valid" do
      expense = Expense.new(amount: 1, description: "Some expense")
      expense.should be_valid
    end

    it "needs a description" do
      expense = Expense.new(amount: 1)
      expense.should_not be_valid
    end
  end

end
