require 'factory_girl'

FactoryGirl.define do
  factory :member do
    work_hours 135
    house_hours 40
    pay_rate 20
  end
end
