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

  it "truncates a value with more than 2 decimal places" do
    string_to_dollars("1.231").should eq 1.23
    string_to_dollars("1.239").should eq 1.23
  end

  it "parses numbers with less than 2 decimal places" do
    string_to_dollars("1.2").should eq 1.2
    string_to_dollars("1").should eq 1
  end

  it "parses negative numbers" do
    string_to_dollars("-1.23").should eq -1.23
  end
end
