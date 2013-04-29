class MembersController < ApplicationController
  before_filter :find_house_size

  def new
    @member = Member.new
  end

  def create
    @member = Member.new params[:member]
    @member.save
    render action: "new"
  end

  protected
  def find_house_size
    @house_size = Member.all.count
  end
end
