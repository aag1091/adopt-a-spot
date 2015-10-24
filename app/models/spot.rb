class Spot < ActiveRecord::Base

  has_many :group_spots
  has_many :groups, through: :group_spots
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  has_many :adoption_requests

  def address
    "#{add1}, #{add2}, #{city} #{state}, #{zipcode}"
  end

  def address_changed?
    add1_changed? || add2_changed? || city_changed? || state_changed? || zipcode_changed?
  end
end
