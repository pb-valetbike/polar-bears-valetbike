class BikesController < ApplicationController
  def index
    @stations = Station.all.order(identifier: :asc)
    @bike = Bike.find_by(id: params[:id])
  end

  def show
    @stations = Station.all.order(identifier: :asc)
    @bike = Bike.find_by(id: params[:id])
  end

  def new
  end

  def edit
    @stations = Station.all.order(identifier: :asc)
    @bike = Bike.find_by(id: params[:id])
    @station = Station.find_by(identifier: params[:stationId])
    @bike.update_attribute(:current_station_id, @station.identifier)
    flash[:notice] = "You've successfully return the bike!"
  end

  def update
  end

  def delete
  end

  def destroy
  end
end
