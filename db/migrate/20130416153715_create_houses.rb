class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.money :rent

      t.timestamps
    end
  end
end
