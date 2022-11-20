class StationsController < ApplicationController

  def index
    @stations = Station.all.order(identifier: :asc)
    @bikes = Bike.all.order(identifier: :asc)
    user = User.find_by(email: params[:email])
  end

  def show
    @station = Station.find_by(id: params[:id])
    @bikes = Bike.all.order(identifier: :asc)
  end

  def new
  end

  def new
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

end
