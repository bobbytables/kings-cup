class GamesController < ApplicationController
  def index
  end

  def new
    @game = Game.new
    @game.game_players.build
  end

  def create
    @game = Game.new(games_params)

    @game.save
    redirect_to @game
  end

  def show
    @game = Game.find(params[:id])
    players = @game.players
    last_player_game_card = @game.player_game_cards.last

    last_player = if last_player_game_card
      last_player_game_card.player
    else
      players.first
    end

    current_player_index = players.index(last_player) + 1

    if players.length == current_player_index
      current_player_index = 0
    end

    all_cards = Card.all.to_a
    used_cards = @game.cards.to_a
    remaining_cards = all_cards - used_cards
    @selected_card = remaining_cards.sample

    king_cards = remaining_cards.select do |card|
      card.name.include?('King')
    end
    @current_player = players.at(current_player_index)

    if king_cards.length == 1 && @selected_card == king_cards.first
      render :loser and return
    end

    PlayerGameCard.create(game: @game,
      player: @current_player,
      card: @selected_card
    )
  end

  private

  def games_params
    params.require(:game).permit(game_players_attributes: [:player_id])
  end
end
