class Country < ApplicationRecord
  has_many :hotels

  validates_presence_of :name, :photo_url
end
