class Board < ActiveRecord::Base
  attr_accessible :content, :title

  belongs_to :house
end
