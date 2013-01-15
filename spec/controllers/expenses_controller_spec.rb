require 'spec_helper'
include ExpensesHelper

describe ExpensesController do

  describe "GET 'index'" do
    it "returns success" do
      get 'index'
      response.should be_success
    end

    it "assigns expenses" do
      get 'index'
      assigns(:expenses).should_not be_nil
    end
  end

  describe "GET 'new'" do
    it "returns success" do
      get 'new'
      response.should be_success
    end
  end

  describe "POST 'create'" do
    it "should strip dollar signs from amount" do
      expect {
         post :create, expense: {amount: "$12.34", description: "Howdy"}
       }.to change(Expense, :count).by(1)
    end

    it "should strip commas from amount" do
      expect {
         post :create, expense: {amount: "1,000.34", description: "Howdy"}
       }.to change(Expense, :count).by(1)
    end
  end
end

