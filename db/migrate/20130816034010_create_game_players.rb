class CreateGamePlayers < ActiveRecord::Migration
  def change
    create_table :game_players do |t|
      t.references :game, index: true
      t.references :player, index: true

      t.timestamps
    end
  end
end
