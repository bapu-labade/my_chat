class HomeController < ApplicationController
 skip_before_filter :authenticate_user!

  def index   
  end

  def show
    @user = User.all
    respond_to do |format|
      format.js
    end
  end
end
