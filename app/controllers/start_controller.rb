class StartController < ApplicationController
  def index
  end
  
  def new
  	redirect_to 'users#new'
  end

end
