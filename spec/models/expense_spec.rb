require 'spec_helper'

describe Expense do

  describe "validation" do

    def expense_with_amount(amount)
      Expense.new(amount:amount, description: "Some expense")
    end

    it "negative amounts are not valid" do
        expense_with_amount(-1).should_not be_valid
    end

    it "amount of zero is not valid" do
      expense_with_amount(0).should_not be_valid
    end

    it "positive amounts are valid" do
      expense_with_amount(1).should be_valid
     end

    it "needs a description" do
      Expense.new(amount: 1).should_not be_valid
    end
  end

end
