class MembersController < ApplicationController
  expose :member

  def create
    member.save
    render action: "new"
  end
end
