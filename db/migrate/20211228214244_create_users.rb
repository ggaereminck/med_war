class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :exp
      t.integer :level

      t.timestamps
    end
  end
end
