class CarsController < ApplicationController
  before_action :set_car, only: [:show]

  def index
    @cars = Car.all
  end

  def show
    @booking = Booking.new
  end

  def new
  end

  def create
  end

private

  def car_params
    params.require(:car).permit(:model, :brand, :year, :km, :description, :price_per_day, :color, :photo)
  end

  def set_car
    @car = Car.find(params[:id])
  end
end
