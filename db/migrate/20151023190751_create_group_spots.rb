class CreateGroupSpots < ActiveRecord::Migration
  def change
    create_table :group_spots do |t|
      t.references :group, index: true
      t.references :spot, index: true

      t.timestamps
    end
  end
end
