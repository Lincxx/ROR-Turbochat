class Room < ApplicationRecord
  validates_uniqueness_of :name
  # allows us to work with the public when we need to
  scope :public_rooms, -> {where(is_private: false)}
end
