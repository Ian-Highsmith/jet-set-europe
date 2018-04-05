class Hotel < ApplicationRecord
  belongs_to :country, optional: true

  validates_presence_of :name, :photo_url, :description, :location
end
