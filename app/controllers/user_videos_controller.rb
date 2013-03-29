class UserVideosController < ApplicationController

   def index
    @videos = current_user.user_videos.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @videos }
    end
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
    @video = current_user.user_videos.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @video }
    end
  end

  # GET /videos/new
  # GET /videos/new.json
  def new
    @video = current_user.user_videos.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @video }
    end
  end

  # GET /videos/1/edit
  def edit
    @video = current_user.user_videos.find(params[:id])
  end

  # POST /videos
  # POST /videos.json
  def create
    @video = current_user.user_videos.new(params[:video])

    respond_to do |format|
      if @video.save
        format.html { redirect_to @video, notice: 'Task was successfully created.' }
        format.json { render json: @video, status: :created, location: @video }
      else
        format.html { render action: "new" }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /videos/1
  # PUT /videos/1.json
  def update
    @video = current_user.user_videos.find(params[:id])

    respond_to do |format|
      if @video.update_attributes(params[:video])
        format.html { redirect_to @video, notice: 'Task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video = current_user.user_videos.find(params[:id])
    @video.destroy

    respond_to do |format|
      format.html { redirect_to videos_url }
      format.json { head :no_content }
    end
  end
end
