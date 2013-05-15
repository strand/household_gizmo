class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :title
      t.money :amount

      t.timestamps
    end
  end
end
