class ProfilesController < ApplicationController

  skip_before_filter :authenticate_user!

  def index
  end

  def get_state
   states = Country.where("name like (?)", "%#{params[:name]}%").first.states
   render json: states
  end
end
