class CreateTrackers < ActiveRecord::Migration[5.1]
  def change
    create_table :trackers do |t|
      t.integer :protein
      t.integer :carbohydrate
      t.integer :fat
      t.boolean :met
      t.integer :user_id

      t.timestamps
    end
  end
end
