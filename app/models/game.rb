class Game < ActiveRecord::Base
  has_many :game_players
  has_many :players, through: :game_players

  has_many :player_game_cards
  has_many :cards, through: :player_game_cards

  accepts_nested_attributes_for :game_players
end
