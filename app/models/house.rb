class House < ActiveRecord::Base
  has_many :members
  attr_accessor :rent

  def total_pay
    self.members.map { |member| member.monthly_pay }.sum
  end
end
