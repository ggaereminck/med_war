class CreateArmies < ActiveRecord::Migration[6.1]
  def change
    create_table :armies do |t|

      t.timestamps
    end
  end
end
