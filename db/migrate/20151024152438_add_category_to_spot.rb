class AddCategoryToSpot < ActiveRecord::Migration
  def change
    add_reference :spots, :category, index: true
  end
end
