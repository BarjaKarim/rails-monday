class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :new, :destroy]

  def index
    query = params[:query]
    if query.present?
      sql_query = "brand ILIKE :query OR model ILIKE :query OR color ILIKE :query"
      @cars = Car.where(sql_query, query: "%#{query}%")
    else
      @cars = Car.all
    end
  end

  def show
    @booking = Booking.new
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def car_params
    params.require(:car).permit(:model, :brand, :year, :km, :description, :price_per_day, :color, :photo)
  end

  def set_car
    @car = Car.find(params[:id])
  end
end
