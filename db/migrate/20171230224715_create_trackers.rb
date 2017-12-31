class CreateTrackers < ActiveRecord::Migration[5.1]
  def change
    create_table :trackers do |t|
      t.integer :protein
      t.integer :carbohydrate
      t.integer :fat
      t.boolean :met
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
