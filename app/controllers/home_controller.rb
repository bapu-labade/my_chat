class HomeController < ApplicationController
  def index
   
  end

  def show
  	@user = User.all
  	respond_to do |format|
  	  format.js
  	end
  end

end
