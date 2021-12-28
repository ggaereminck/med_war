class CreateBuildingResources < ActiveRecord::Migration[6.1]
  def change
    create_table :building_resources do |t|
      t.integer :amount
      t.integer :collect_cooldown
      t.datetime :last_collected_at

      t.timestamps
    end
  end
end
