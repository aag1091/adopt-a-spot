class AddAvatarColumnsToAdoptionRequests < ActiveRecord::Migration
  def up
    add_attachment :adoption_requests, :avatar
  end

  def down
    remove_attachment :adoption_requests, :avatar
  end
end
