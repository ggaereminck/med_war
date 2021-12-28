class CreateStoreResources < ActiveRecord::Migration[6.1]
  def change
    create_table :store_resources do |t|
      t.integer :cost
      t.string :name
      t.integer :amount
      t.integer :unlock_level

      t.timestamps
    end
  end
end
