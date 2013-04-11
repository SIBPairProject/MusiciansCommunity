class StatsController < ApplicationController
def index
    @stats = Stat.all
  end


  def show
    @stat = Stat.find(params[:id])    
  end

  def new
    @stat = Stat.new
  end

  def edit
    @stat = Stat.find(params[:id])
  end

  def create
    @stat = Stat.new(params[:stat])

    respond_to do |format|
      if @stat.save
        format.html { redirect_to @stat, notice: 'Stat successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @stat = Stat.find(params[:id])
    
    respond_to do |format|
	    if @stat.update_attributes(params[:stat])
	      format.html { redirect_to @stat, notice: 'Stat successfully updated.' }
	    else
	      format.html { render action: "edit" }
	    end
	  end
  end

  def destroy
    @stat = Stat.find(params[:id])
    @stat.destroy

    redirect_to stats_url 
  end
end
