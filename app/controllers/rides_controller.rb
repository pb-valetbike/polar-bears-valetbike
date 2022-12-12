class RidesController < ApplicationController
  def index
    user = Current.user
    @rides = user.rides
  end
end
