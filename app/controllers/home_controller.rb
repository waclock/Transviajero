class HomeController < ApplicationController
 
 before_filter :cache_loading, :only => [:index]

 def cache_loading
  headers['Cache-Control'] = 'public; max-age=86400'
end

  def index
  	@trip=Trip.find(:all)
  end
end
