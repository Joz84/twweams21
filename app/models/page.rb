class Page < ApplicationRecord
  geocoded_by :city
  after_validation :geocode, if: :city_changed?
end
