class Expense < ActiveRecord::Base
  attr_accessible :amount, :description
end
