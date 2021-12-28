class CreateResources < ActiveRecord::Migration[6.1]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :img
      t.integer :amount

      t.timestamps
    end
  end
end
