class CreateUnits < ActiveRecord::Migration[6.1]
  def change
    create_table :units do |t|
      t.string :name
      t.integer :attack
      t.integer :defense
      t.string :img
      t.integer :army_id

      t.timestamps
    end
  end
end
