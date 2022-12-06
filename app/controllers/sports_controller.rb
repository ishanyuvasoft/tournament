class SportsController < ApplicationController
  def index
    @sports = Sport.all
  end

  def new
    @sport = Sport.new
  end

  def create
    @sport = Sport.new(sport_params)

    if @sport.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @sport = Sport.find(params[:id])
  end

  def edit
    @sport = Sport.find(params[:id])
  end

  def update
    @sport = Sport.find(params[:id])

    if @sport.update(sport_params)
      redirect_to root_path
    else
      render edit
    end
  end

  def destroy
    @sport = Sport.find(params[:id])
    @sport.destroy
    redirect_to root_path
  end

  private
  def sport_params
    params.require(:sport).permit(:sport_name,:sport_type,:no_of_players,:date)
  end
  
end
