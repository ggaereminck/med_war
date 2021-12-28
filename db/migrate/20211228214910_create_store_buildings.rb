class CreateStoreBuildings < ActiveRecord::Migration[6.1]
  def change
    create_table :store_buildings do |t|
      t.integer :cost
      t.string :name
      t.string :description
      t.integer :unlock_level

      t.timestamps
    end
  end
end
