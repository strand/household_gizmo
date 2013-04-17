require 'spec_helper'

describe Member do
  context "" do
    before :all do
      @alice = FactoryGirl.create :member
      @benny = FactoryGirl.create :member
      @house = FactoryGirl.create :house, members: [@alice, @benny]
    end

    it "calculates the member's monthly pay" do
      @alice.monthly_pay.should == 270000
    end

    it "calculates the member's housework deduction" do
      @alice.deduction.should == 80000
    end

    it "calculates the member's portion of the rent" do
      @alice.portion_of_rent.should == 75000
    end
  end
end
