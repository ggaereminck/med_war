class CreateUnits < ActiveRecord::Migration[6.1]
  def change
    create_table :units do |t|
      t.string :name
      t.integer :attack
      t.integer :defense
      t.string :img
      t.Army :belongs_to

      t.timestamps
    end
  end
end
