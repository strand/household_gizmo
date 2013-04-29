class House < ActiveRecord::Base
  has_many :members
  monetize :rent_cents

  attr_accessible :address, :name

  def total_pay
    self.members.map { |m| m.monthly_pay }.sum
  end
end
