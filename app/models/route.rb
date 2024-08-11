class Route < ApplicationRecord
  has_many :favorite_routes
  has_many :route_notes
end
