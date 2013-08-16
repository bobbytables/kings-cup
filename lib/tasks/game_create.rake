task :create_new_game_with_everyone => :environment do
  game = Game.new

  Player.all.each do |player|
    puts "Adding player: #{player.name}"
    game.game_players.build(player: player)
  end

  puts "Saving!"
  game.save

  puts "New game: #{game.inspect}"
end