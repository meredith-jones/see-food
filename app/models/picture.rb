class Picture < ApplicationRecord
  belongs_to :restaurant
  # revisit this, not sure if syntax is correct
  belongs_to :user, through: :likes
  has_many :likes
end
