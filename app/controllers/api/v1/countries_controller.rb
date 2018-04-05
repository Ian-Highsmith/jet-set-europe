class Api::V1::CountriesController < ApplicationController
  def index
    render json: Country.all
  end

  def show
    @country = Country.find(params[:id])
    @hotels = Hotel.where(country: params[:id])
    render json: { country: @country, hotels: @hotels }
  end
end
