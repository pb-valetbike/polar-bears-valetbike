class BikesController < ApplicationController
  def index
    @stations = Station.all.order(identifier: :asc)
    @bike = Bike.find_by(id: params[:id])
  end

  def show
    user = Current.user
    @stations = Station.all.order(identifier: :asc)
    @bike = Bike.find_by(id: params[:id])
    @ride = Ride.find_by(id: $count, user_id: user.id)
  end

  def new
  end

  def edit
    @stations = Station.all.order(identifier: :asc)
    @bike = Bike.find_by(id: params[:id])
    save_startTime
    payment
  end

  def payment
    user = Current.user
    user.update_attribute(:points, user.points - 10)
  end

  def update
    @stations = Station.all.order(identifier: :asc)
    @bike = Bike.find_by(id: params[:id])
    @station = Station.find_by(identifier: params[:stationId])
    if @station.dock_count.to_i - @station.docked_bikes.count < 1
      render('edit')
    else
      if @bike.update_attribute(:current_station_id, @station.identifier)
        save_bike
        redirect_to bike_path(@bike)
      else
        render('edit')
      end
    end
  end

  def save_bike
    user = Current.user
    @bike = Bike.find_by(id: params[:id])
    @station = Station.find_by(identifier: params[:stationId])
    @ride = Ride.find_by(id: $count, user_id: user.id)
    if @ride.update(endStation: @station.name)
      puts("end station saved")
    end
    if @ride.update(bikeid: @bike.identifier)
      puts("bike saved")
    end
    if @ride.update(endTime: Time.current)
      puts("endTime saved")
    end
  end

  def save_startTime
    user = Current.user
    @ride = Ride.find_by(id: $count, user_id: user.id)
    if @ride.update(startTime: Time.current)
      puts("startTime saved")
    end
  end
end
