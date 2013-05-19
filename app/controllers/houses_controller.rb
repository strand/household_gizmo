class HousesController < ApplicationController
  def index
    if House.all.count == 0
      @house = House.new
    else
      @house = House.first
      redirect_to house_path @house.id
    end
  end

  def create
    @house = House.new params[:house]
    if @house.save
      redirect_to  house_path @house.id
    else
      render action: 'index'
    end
  end

  def update
    @house = House.find params[:id]
    if @house.update_attributes params[:house]
      redirect_to @house, notice: 'House was successfully updated.'
    else
      render action: "edit"
    end
  end

  def show
    @house = House.find params[:id]
  end

  def edit
    @house = House.find params[:id]
  end
end
