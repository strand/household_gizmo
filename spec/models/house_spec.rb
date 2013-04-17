require 'spec_helper'

describe House do
  context "" do
    before :all do
      @alice = FactoryGirl.create :member
      @benny = FactoryGirl.create :member
      @house = FactoryGirl.create :house, members: [@alice, @benny]
    end

    it "calculates the house's total pay" do
      @house.total_pay.should == 540000
    end
  end
end
