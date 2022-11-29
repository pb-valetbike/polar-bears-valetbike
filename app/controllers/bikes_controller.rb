class BikesController < ApplicationController
  def index
    @stations = Station.all.order(identifier: :asc)
    @bike = Bike.find_by(id: params[:id])
  end

  def show
    @stations = Station.all.order(identifier: :asc)
    @bike = Bike.find_by(id: params[:id])
    @station = Station.find_by(identifier: params[:stationId])
  end

  def new
  end

  def edit
  end

  def update
    @stations = Station.all.order(identifier: :asc)
    @bike = Bike.find_by(id: params[:id])
    @station = Station.find_by(identifier: params[:stationId])
    @bike.update_attribute(:current_station, @station)
  end

  def delete
  end

  def destroy
  end
end
