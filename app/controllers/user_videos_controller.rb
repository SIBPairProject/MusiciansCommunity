class UserVideosController < ApplicationController
 
  def index
    @user_videos = current_user.user_videos.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_videos }
    end
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
    @user_video = current_user.user_videos.find(params[:id])    
    @vid_id = @user_video.video_embed.split('?v=')[1]
    @u = "http://www.youtube.com/embed/" + @vid_id

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_video }
    end
  end

  # GET /videos/new
  # GET /videos/new.json
  def new
    @user_video = current_user.user_videos.new
    @weekly_tunes = WeeklyTune.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_video }
    end
  end

  # GET /videos/1/edit
  def edit
    @user_video = current_user.user_videos.find(params[:id])
  end

  # POST /videos
  # POST /videos.json
  def create
    @user_video = current_user.user_videos.new(params[:user_video])

    respond_to do |format|
      if @user_video.save
        format.html { redirect_to @user_video, notice: 'Video was successfully created.' }
        format.json { render json: @user_video, status: :created, location: @user_video }
      else
        format.html { render action: "new" }
        format.json { render json: @user_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /videos/1
  # PUT /videos/1.json
  def update
    @user_video = current_user.user_videos.find(params[:id])

    respond_to do |format|
      if @user_video.update_attributes(params[:user_video])
        format.html { redirect_to @user_video, notice: 'Video was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @user_video = current_user.user_videos.find(params[:id])
    @user_video.destroy

    respond_to do |format|
      format.html { redirect_to user_videos_url }
      format.json { head :no_content }
    end
  end
end
