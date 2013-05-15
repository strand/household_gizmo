class House < ActiveRecord::Base
  has_many :members
  has_many :expenses

  attr_accessible :address, :name

  def total_pay
    self.members.map { |m| m.monthly_pay }.sum
  end
end
