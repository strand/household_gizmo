class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.money      :pay_rate
      t.decimal    :work_hours
      t.decimal    :house_hours
      t.references :house
      t.string     :name
      t.string     :email
      t.string     :pronoun

      t.timestamps
    end
  end
end
