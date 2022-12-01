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
  end

  def update
    @stations = Station.all.order(identifier: :asc)
    @bike = Bike.find_by(id: params[:id])
    @station = Station.find_by(identifier: params[:stationId])
    if @bike.update_attribute(:current_station_id, @station.identifier)
      redirect_to bike_path(@bike)
    else
      render('edit')
    end
  end

  def delete
  end

  def destroy
  end
end
