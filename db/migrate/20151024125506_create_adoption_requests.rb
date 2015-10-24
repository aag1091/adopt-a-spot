class CreateAdoptionRequests < ActiveRecord::Migration
  def change
    create_table :adoption_requests do |t|
      t.string :group_name
      t.integer :no_of_volunteers
      t.string :first_name
      t.string :last_name
      t.string :add1
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :email
      t.string :phone
      t.references :category, index: true

      t.timestamps
    end
  end
end
