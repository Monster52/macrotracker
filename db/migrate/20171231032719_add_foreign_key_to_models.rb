class AddForeignKeyToModels < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key :goals, :users
		add_foreign_key :trackers, :users
  end
end
