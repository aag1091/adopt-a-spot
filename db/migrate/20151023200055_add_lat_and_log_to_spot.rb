class AddLatAndLogToSpot < ActiveRecord::Migration
  def change
    add_column :spots, :lat, :string
    add_column :spots, :log, :string
  end
end
