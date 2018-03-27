class Country < ApplicationRecord
  has_many :hotels
  has_many :landmarks

  validates_presence_of
end