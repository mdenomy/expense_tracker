require 'spec_helper'

describe "Expense Pages" do

  describe "root path" do
    it "maps to expenses path" do
      visit root_path
      page.should have_selector('h1', text: 'Expense List')
      page.should have_selector('.expense_header')
    end
  end

  describe "expenses index" do
    it "has the expense list" do
      visit expenses_path
      page.should have_selector('h1', text: 'Expense List')
      page.should have_selector('.expense_header')
    end
  end

  describe "new expense page" do
    it "has a form for entering a new expense" do
      visit new_expense_path
      page.should have_selector('form')
    end

    describe "creating expense with valid data" do
      before do
        visit new_expense_path
        fill_in "Amount", with: 54.99
        fill_in "Description", with: "Bulleit Bourbon"
      end

      it "can create a new expense" do
        expect { click_button "Add Expense" }.to change(Expense, :count).by(1)
      end

      it "new expense is in the expenses list" do
        click_button "Add Expense"
        page.should have_content('54.99')
        page.should have_content('Bulleit Bourbon')
      end
    end

    describe "creating expense with invalid data" do
      it "does not create a new expense" do
        visit new_expense_path
        fill_in "Amount", with: -100.0
        expect { click_button "Add Expense" }.not_to change(Expense, :count)
      end
    end
  end
end
