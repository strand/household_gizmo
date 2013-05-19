class House < ActiveRecord::Base
  has_many :members
  has_many :expenses
  has_paper_trail only: %i(board_title board_content)

  has_one  :board
  accepts_nested_attributes_for :board

  attr_accessible :address, :name, :board_title, :board_content

  def total_pay
    self.members.map { |m| m.monthly_pay }.sum
  end
end
