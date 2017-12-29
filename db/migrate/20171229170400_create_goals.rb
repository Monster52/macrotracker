class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.integer :protein
      t.integer :carbohydrate
      t.integer :fat
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
