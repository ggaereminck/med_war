class CreateBuildings < ActiveRecord::Migration[6.1]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :resource
      t.string :img
      t.integer :sell_amt
      t.integer :kingdom_id

      t.timestamps
    end
  end
end
