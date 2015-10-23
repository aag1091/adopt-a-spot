class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :name
      t.string :add1
      t.string :add2
      t.string :city
      t.string :state
      t.string :zipcode
      t.boolean :status
      t.string :maintainer

      t.timestamps
    end
  end
end
