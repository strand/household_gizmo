class Board < ActiveRecord::Base
  attr_accessible :content, :title

  belongs_to :house, autosave: true

  has_paper_trail
end
