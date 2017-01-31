class Picture < ApplicationRecord
  belongs_to :restaurant
  # revisit this, not sure if syntax is correct; pics belongs to user??
  belongs_to :user
  has_many :likes
end
