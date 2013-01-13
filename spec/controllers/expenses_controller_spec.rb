require 'spec_helper'

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
end
