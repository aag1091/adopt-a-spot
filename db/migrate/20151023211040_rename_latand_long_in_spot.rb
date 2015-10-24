class RenameLatandLongInSpot < ActiveRecord::Migration
  def change
    remove_column :spots, :lat
    remove_column :spots, :log
    add_column :spots, :latitude, :float
    add_column :spots, :longitude, :float
  end
end
