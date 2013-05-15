class HousesController < ApplicationController
  def index
    if House.all.count == 0
      @house = House.new
    else
      redirect_to controller: 'expenses', action: 'new'
    end
  end

  def create
    @house = House.new params[:house]
    save_house
  end

  def update
    @house = House.find params[:house][:id]
  end

  protected
  def save_house
    if @house.save
      redirect_to controller: 'expenses', action: 'new'
    else
      render      action: 'index'
    end
  end
end
