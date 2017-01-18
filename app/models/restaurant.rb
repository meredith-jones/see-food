class Restaurant < ApplicationRecord
  has_many :pictures
  has_many :likes, through: :pictures
end
