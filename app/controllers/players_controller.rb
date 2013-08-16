class PlayersController < ApplicationController
  def index
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    @player.save
    redirect_to players_path
  end

  private

  def player_params
    params.require(:player).permit(:name)
  end
end
