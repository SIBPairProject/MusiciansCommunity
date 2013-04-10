class UserController < ApplicationController
  def show
  	@current_user = current_user
  end

  def index
  	@current_user = current_user
  end

  # def dashboard
  # 	@current_user = current_user
  # 	@user_videos = UserVideo.where(:user_id => @current_user)
  #   @weekly_tune = WeeklyTune.last
  # end

end
