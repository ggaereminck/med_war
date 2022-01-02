class CreateKingdoms < ActiveRecord::Migration[6.1]
  def change
    create_table :kingdoms do |t|
      t.string :name
      t.string :emblem
      t.integer :user_id

      t.timestamps
    end
  end
end
