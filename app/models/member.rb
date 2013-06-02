class Member < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me
  belongs_to :house
  monetize :pay_rate_cents

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
