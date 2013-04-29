class Member < ActiveRecord::Base
  belongs_to :house
  monetize :pay_rate_cents

  attr_accessible :name, :email, :pronoun

  def monthly_pay
    self.work_hours * self.pay_rate_cents
  end

  def deduction
    self.house_hours * self.pay_rate_cents
  end

  def portion_of_rent
    rent      = self.house.rent_cents
    total_pay = self.house.total_pay
    rent * (self.monthly_pay / total_pay)
  end
end
