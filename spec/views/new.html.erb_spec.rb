require 'spec_helper'

describe "expenses/new" do

  it "has a form for adding a new expense" do
    assign(:expense, stub_model(Expense).as_new_record)
    render
    assert_select "form", :action => expenses_path, :method => "post" do
      assert_select "input#expense_amount", :name => "expense[amount]"
      assert_select "input#expense_description", :name => "expense[description]"
      assert_select "input[type=submit]"
    end
  end

end
