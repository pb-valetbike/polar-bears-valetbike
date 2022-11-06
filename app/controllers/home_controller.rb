class HomeController < ApplicationController
  def main
  end

  def station
  end

  def about
    @text = params['text']
  end

  def pricing 
  end
end
