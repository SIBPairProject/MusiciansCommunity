
class WeeklyTunesController < ApplicationController
  # GET /weekly_tunes
  # GET /weekly_tunes.json
  def index
    @weekly_tunes = WeeklyTune.all
    @vid_id = @weekly_tunes.last.description.split('?v=')[1]
    @u = "http://www.youtube.com/embed/" + @vid_id
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @weekly_tunes }
    end
  end

  def show
    @weekly_tune = WeeklyTune.find(params[:id])
    @vid_id = @weekly_tune.description.split('?v=')[1]
    @u = "http://www.youtube.com/embed/" + @vid_id
    @submissions = @weekly_tune.user_videos.all
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @weekly_tune }
    end
  end

  def new
    @weekly_tune = WeeklyTune.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @weekly_tune }
    end
  end

  # GET /weekly_tunes/1/edit
  def edit
    @weekly_tune = WeeklyTune.find(params[:id])
  end

  # POST /weekly_tunes
  # POST /weekly_tunes.json
  def create
    @weekly_tune = WeeklyTune.new(params[:weekly_tune])

    respond_to do |format|
      if @weekly_tune.save
        format.html { redirect_to @weekly_tune, notice: 'Weekly tune was successfully created.' }
        format.json { render json: @weekly_tune, status: :created, location: @weekly_tune }
      else
        format.html { render action: "new" }
        format.json { render json: @weekly_tune.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /weekly_tunes/1
  # PUT /weekly_tunes/1.json
  def update
    @weekly_tune = WeeklyTune.find(params[:id])

    respond_to do |format|
      if @weekly_tune.update_attributes(params[:weekly_tune])
        format.html { redirect_to @weekly_tune, notice: 'Weekly tune was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @weekly_tune.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weekly_tunes/1
  # DELETE /weekly_tunes/1.json
  def destroy
    @weekly_tune = WeeklyTune.find(params[:id])
    @weekly_tune.destroy

    respond_to do |format|
      format.html { redirect_to weekly_tunes_url }
      format.json { head :no_content }
    end
  end
end
