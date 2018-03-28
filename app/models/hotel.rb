class Hotel < ApplicationRecord
  belongs_to :country

  validates_presence_of :name, :photo_url, :description, :location, :country_id
end
