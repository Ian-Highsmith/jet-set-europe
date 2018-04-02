require 'factory_bot'

FactoryBot.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

  factory :country do
    name 'Spain'
    description 'Beautiful Country'
    photo_url 'http://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/3907387.png'
  end
end
