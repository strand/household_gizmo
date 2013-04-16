class House < ActiveRecord::Base
  has_many :members
  attr_accessible :rent
  attr_accessor :rent

  def total_pay
    total = 0
    self.members.each do |member|
      total += member.monthly_pay
    end
    total
  end
end
