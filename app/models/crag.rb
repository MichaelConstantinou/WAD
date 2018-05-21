class Crag < ApplicationRecord

  validates :name, uniqueness: true, presence: true
  validates :image, uniqueness: true, presence: true
  validates :location_lat, presence: true
  validates :location_lon, presence: true

  has_and_belongs_to_many :users

end
