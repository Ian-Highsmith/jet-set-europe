class Api::V1::CountriesController < ApplicationController
  def index
    render json: Country.all
  end

  def show
    @country = Country.find(params[:id])
    @hotel = Hotel.find_by(country_id: params[:id])
    render json: {
      country: @country,
      hotel: @hotel
    }
  end
end
