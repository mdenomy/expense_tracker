class Expense < ActiveRecord::Base
  attr_accessible :amount, :description

  validates :amount, numericality: { greater_than: 0 }
  validates :description, presence: true
end
