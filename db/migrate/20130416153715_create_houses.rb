class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.money      :rent
      t.references :members
      t.string     :name
      t.string     :address

      t.timestamps
    end
  end
end
