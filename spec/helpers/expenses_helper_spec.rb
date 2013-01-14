require 'spec_helper'

describe ExpensesHelper do

  it "parses a simple value" do
    string_to_dollars("1.23").should eq 1.23
  end

end
