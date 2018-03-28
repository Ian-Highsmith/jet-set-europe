class Api::V1::HotelsController < ApplicationController
  def index
    render json: Hotel.all
  end

  def show
    @hotel= Hotel.find(params[:id])
    render json: { hotel: @hotel}
  end
end
