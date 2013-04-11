class CommentsController < ApplicationController
  def create	
	@user_video = UserVideo.find(params[:user_video_id])
	@comment = @user_video.comments.build(params[:comment])
	@comment.name = current_user.name
	@comment.save
	redirect_to @user_video
  end
end
