class StationsController < ApplicationController

  def index
    @stations = Station.all.order(identifier: :asc)
    @bikes = Bike.all.order(identifier: :asc)
    user = User.find_by(email: params[:email])
  end

  def show
    @station = Station.find_by(id: params[:id])
    @bikes = Bike.all.order(identifier: :asc)
    if Current.user
      save_ride
    end
  end

  def save_ride
    @station = Station.find_by(id: params[:id])
    @ride = Ride.new(startStation: @station.name)
    @ride.user = Current.user
    if @ride.save
      $count = @ride.id
      puts("saved")
    end
  end

end
