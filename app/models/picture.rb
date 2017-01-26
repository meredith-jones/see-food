class Picture < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  has_many :likes
end
