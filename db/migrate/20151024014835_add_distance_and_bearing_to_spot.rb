class AddDistanceAndBearingToSpot < ActiveRecord::Migration
  def change
    add_column :spots, :distance, :float
    add_column :spots, :bearing, :float
  end
end
