class ChampionshipsController < ApplicationController

  def index
    @championship = Championship.all
  end

  def show
    @championship = Championship.find(params[:id])
  end

  def new
    @championship = Championship.new
  end

  def edit
    @championship = Championship.find(params[:id])
  end

  def create
    @championship = Championship.new(championship_params)
    @championship.user = current_user
    @championship.date = Time.now
    @championship.save
    if @championship.save
      redirect_to championship_path(@championship), notice: "Votre championnat a bien été crée."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @championship = Championship.find(params[:id])
    if @championship.update(championship_params)
      redirect_to championship_path(@championship), notice: "Votre championship a bien mis à jour."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @championship = Championship.find(params[:id])
    @championship.destroy
    redirect_to championships_path, status: :see_other, notice: "Votre championship a bien été supprimé."
  end

  private

  def championship_params
    params.require(:championship).permit(:title, :description, :date)
  end
end
