class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.integer :protein
      t.integer :carbohydrate
      t.integer :fat
      t.integer :user_id

      t.timestamps
    end
  end
end
