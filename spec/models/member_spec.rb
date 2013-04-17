require 'spec_helper'

describe Member do
  context "" do
    before :all do
      @alice = FactoryGirl.create :member
    end

    it "calculates the member's monthly pay" do
      @alice.monthly_pay.should be 2700
    end

    it "calculates the member's housework deduction" do
      @alice.deduction.should be 800
    end
  end
end
