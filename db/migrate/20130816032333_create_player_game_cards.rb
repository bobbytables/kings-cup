class CreatePlayerGameCards < ActiveRecord::Migration
  def change
    create_table :player_game_cards do |t|
      t.references :player, index: true
      t.references :game, index: true
      t.references :card, index: true

      t.timestamps
    end
  end
end
