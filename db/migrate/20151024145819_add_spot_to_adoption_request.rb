class AddSpotToAdoptionRequest < ActiveRecord::Migration
  def change
    add_reference :adoption_requests, :spot, index: true
  end
end
