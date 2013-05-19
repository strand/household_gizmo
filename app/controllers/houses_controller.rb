class HousesController < ApplicationController
  expose :house

  def index
    redirect_to house_path House.first.id if House.all.count > 0
  end

  def create
    if house.save
      redirect_to house_path house.id
    else
      render action: 'index'
    end
  end

  def update
    if house.update_attributes params[:house]
      redirect_to house, notice: 'House was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    house.destroy
    redirect_to houses_path, :notice => "Successfully destroyed house."
  end
end
