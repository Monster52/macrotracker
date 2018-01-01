class AddMetDateToTrackers < ActiveRecord::Migration[5.1]
  def change
    add_column :trackers, :met_date, :datetime
  end
end
