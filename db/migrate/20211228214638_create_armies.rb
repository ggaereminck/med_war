class CreateArmies < ActiveRecord::Migration[6.1]
  def change
    create_table :armies do |t|
      t.integer :kingdom_id

      t.timestamps
    end
  end
end
