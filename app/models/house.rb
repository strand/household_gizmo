class House < ActiveRecord::Base
  attr_accessible :address, :name, :board_attributes

  has_many :members
  has_many :expenses

  has_one  :board, :dependent => :destroy
  accepts_nested_attributes_for :board

  def total_pay
    self.members.map { |m| m.monthly_pay }.sum
  end
end
