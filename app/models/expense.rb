class Expense < ActiveRecord::Base
  attr_accessible :title
  monetize :amount_cents

  belongs_to :house
end
