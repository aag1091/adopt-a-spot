class Spot < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def address
    "#{add1}, #{add2}, #{city} #{state}, #{zipcode}"
  end

  def address_changed?
    add1_changed? || add2_changed? || city_changed? || state_changed? || zipcode_changed?
  end
end
