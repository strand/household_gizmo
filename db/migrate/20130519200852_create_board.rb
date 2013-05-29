class CreateBoard < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.text       :content
      t.string     :title
      t.references :house
    end
  end
end
