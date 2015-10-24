class AddGoogleMapImageUrlAndGoogleStreetViewImageUrlToSpot < ActiveRecord::Migration
  def change
    add_column :spots, :google_map_image_url, :string
    add_column :spots, :google_street_view_image_url, :string
  end
end
