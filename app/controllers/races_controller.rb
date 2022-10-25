class RacesController < ApplicationController
  def show
    @race = Race.find(params[:id])
  end

  def new
    @race = Race.new
  end

  def edit
    @race = Race.find(params[:id])
  end
end
