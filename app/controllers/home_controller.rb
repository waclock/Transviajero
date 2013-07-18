class HomeController < ApplicationController
  
  def index
  	@trip=Trip.find(:all)
  end
end
