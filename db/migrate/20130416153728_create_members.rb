class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.money   :pay_rate
      t.decimal :work_hours
      t.decimal :house_hours

      t.timestamps
    end
  end
end
