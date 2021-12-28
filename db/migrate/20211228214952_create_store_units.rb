class CreateStoreUnits < ActiveRecord::Migration[6.1]
  def change
    create_table :store_units do |t|
      t.integer :cost
      t.string :name
      t.string :description
      t.integer :attack
      t.integer :defense
      t.integer :unlock_level

      t.timestamps
    end
  end
end
