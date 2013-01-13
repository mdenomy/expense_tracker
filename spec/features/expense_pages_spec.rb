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

    it "can create a new expense" do
      visit new_expense_path
      fill_in "Amount", with: 54.99
      fill_in "Description", with: "Bulleit Bourbon"
      expect { click_button "Add Expense" }.to change(Expense, :count).by(1)
    end

    it "New expense is in the expenses list" do
      visit new_expense_path
      fill_in "Amount", with: 54.99
      fill_in "Description", with: "Bulleit Bourbon"
      click_button "Add Expense"
      page.should have_content('54.99')
      page.should have_content('Bulleit Bourbon')
    end
  end
end
