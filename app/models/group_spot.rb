class GroupSpot < ActiveRecord::Base
  belongs_to :group
  belongs_to :spot
end
