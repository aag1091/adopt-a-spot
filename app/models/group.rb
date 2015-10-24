class Group < ActiveRecord::Base
  has_many :user_groups
  has_many :group_spots
  has_many :users, through: :user_groups
  has_many :spots, through: :group_spots
end
