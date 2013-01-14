require 'spec_helper'

describe ExpensesHelper do

  it "parses a simple value" do
    string_to_dollars("1.23").should eq 1.23
  end

  it "parses a value that contains a dollar sign" do
    string_to_dollars("$2.34").should eq 2.34
  end

  it "parses a value that contains commas" do
    string_to_dollars("10,000.00").should eq 10000.00
  end
end
