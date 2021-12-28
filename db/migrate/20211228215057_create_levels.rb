class CreateLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :levels do |t|
      t.integer :point_cap

      t.timestamps
    end
  end
end
