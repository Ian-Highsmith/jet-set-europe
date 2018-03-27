class Hotel < ApplicationRecord
  belongs_to :country
  validates_presence_of
end
