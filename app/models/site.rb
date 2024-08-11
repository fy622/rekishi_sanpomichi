class Site < ApplicationRecord
  has_many :favorite_sites
  has_many :site_notes
  has_many :site_reviews
end
