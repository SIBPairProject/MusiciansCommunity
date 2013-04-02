class UsersController < ApplicationController
  def show
  	@current_user = current_user
  end

  def index
  	@current_user = current_user
  end

  def dashboard
  	@current_user = current_user
  	@videos = UserVideo.where(:user_id => @current_user)
  end

end
