# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Country.delete_all
Hotel.delete_all

countries = ActiveSupport::JSON.decode(File.read('db/seeds/countries.json'))
hotels = ActiveSupport::JSON.decode(File.read('db/seeds/hotels.json'))['hotels']

countries.each do |country|
  Country.create!(
    name: country["name"],
    photo_url: country["flag"],
    description: country["subregion"]
  )
end

hotels.each do |country|
  if Country.find_by(name: country['name'])
    Hotel.create!(
      country: Country.find_by(name: country['name']),
      name: hotel['name'],
      photo_url: hotel['photo_url'],
      location: hotel['location'],
      description: hotel['description']
    )
  end
end
# spain = Country.create(
#   name: 'Spain',
#   photo_url: "https://ethicalboardroom.com/wp-content/uploads/2017/01/Spain-flag-map-plus-ultra.png",
#   description: 'One of the top places to visit.'


# Hotel.create(
#   country_id: spain.id,
#   name: 'Mercer Hotel Barcelona',
#   photo_url: "https://media.hotelscombined.com/HI127257804.jpg",
#   description: '5 Star Hotel',
#   location: 'Barcelona, Spain'
# )
