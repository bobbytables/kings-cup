# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130816035553) do

  create_table "cards", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "game_players", force: true do |t|
    t.integer  "game_id"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "game_players", ["game_id"], name: "index_game_players_on_game_id"
  add_index "game_players", ["player_id"], name: "index_game_players_on_player_id"

  create_table "games", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_game_cards", force: true do |t|
    t.integer  "player_id"
    t.integer  "game_id"
    t.integer  "card_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "player_game_cards", ["card_id"], name: "index_player_game_cards_on_card_id"
  add_index "player_game_cards", ["game_id"], name: "index_player_game_cards_on_game_id"
  add_index "player_game_cards", ["player_id"], name: "index_player_game_cards_on_player_id"

  create_table "players", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
