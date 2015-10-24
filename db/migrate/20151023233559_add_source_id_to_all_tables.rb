class AddSourceIdToAllTables < ActiveRecord::Migration
  def change
    add_column :users, :source_id, :string
    add_column :groups, :source_id, :string
    add_column :group_spots, :source_id, :string
    add_column :user_groups, :source_id, :string
  end
end
