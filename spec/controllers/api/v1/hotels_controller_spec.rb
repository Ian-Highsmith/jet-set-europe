require 'rails_helper'

RSpec.describe Api::V1::HotelsController, type: :controller do
  let!(:country1) {
    Country.create!(
    name: 'country1',
    photo_url: 'https://ethicalboardroom.com/wp-content/uploads/2017/01/Spain-flag-map-plus-ultra.png',
    description: 'One of the top places to visit.'
    )
  }
  let!(:Mercer_Hotel_Barcelona) {
    Hotel.create!(
    name: 'Mercer Hotel Barcelona',
    photo_url: 'https://media.hotelscombined.com/HI127257804.jpg',
    description: '5 Star Hotel',
    location: 'Barcelona',
    country_id: country1.id
    )
  }
  describe 'GET#index' do
    it 'should return a list of all the hotels' do
      get :index
      returned_json = JSON.parse(response.body)
      # binding.pry
      expect(returned_json.length).to eq 1
      expect(response.status).to eq 200
      expect(response.content_type).to eq('application/json')

      expect(returned_json[0]['name']).to eq 'Mercer Hotel Barcelona'
      expect(returned_json[0]['description']).to eq '5 Star Hotel'
    end
  end
end
