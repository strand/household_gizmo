class Member < ActiveRecord::Base
  belongs_to :house
  attr_accessible :work_hours, :house_hours, :pay_rate

  def monthly_pay
    @outside_hours * @pay_rate
  end

  def deduction
    @house_hours * @pay_rate
  end
end
