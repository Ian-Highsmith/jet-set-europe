class Api::V1::HotelsController < ApplicationController
  def index
    render json: Hotel.all
  end

  def show
    @hotel = Hotel.find(country: params[:id])
    country_id = @hotel.country.id
    render json: {
      hotel: @hotel
      country_id: country_id
    }
  end
end
