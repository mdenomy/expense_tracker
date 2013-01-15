require 'spec_helper'

describe "expenses/index" do

  it "shows every expense" do
    assign(:expenses, [stub_model(Expense), stub_model(Expense), stub_model(Expense)])
    render
    assert_select 'tr.expense', 3
  end

  it "has a header row" do
    assign(:expenses, [stub_model(Expense), stub_model(Expense), stub_model(Expense)])
    render
    assert_select 'tr.expense_header'
    assert_select 'th', text: "Amount"
    assert_select 'th', text: "Description"
  end

  it "expense has the amount and description" do
    assign(:expenses, [ stub_model(Expense, amount: 1.25, description: "Snickers bar")])
    render
    expect(rendered).to include("$1.25")
    expect(rendered).to include("Snickers bar")
  end

  it "pads the amount to 2 decimal places" do
     assign(:expenses, [ stub_model(Expense, amount: 1, description: "Gum")])
     render
     expect(rendered).to include("$1.00")
   end
 end

