require 'spec_helper'

describe Expense do

  describe "validation" do

    it "negative amounts are not valid" do
      build(:expense, amount: -1).should_not be_valid
    end

    it "amount of zero is not valid" do
      build(:expense, amount: 0).should_not be_valid
    end

    it "positive amounts are valid" do
      build(:expense, amount: 1).should be_valid
    end

    it "needs a description" do
      build(:expense, description: "").should_not be_valid
    end
  end

end
