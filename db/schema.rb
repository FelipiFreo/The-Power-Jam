# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_02_24_235204) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.string "game_name"
    t.date "game_date"
    t.time "game_time"
    t.string "game_location_nickname"
    t.string "game_map_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "league_in_the_games", force: :cascade do |t|
    t.bigint "league_id", null: false
    t.bigint "game_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_league_in_the_games_on_game_id"
    t.index ["league_id"], name: "index_league_in_the_games_on_league_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string "league_name"
    t.date "foundation"
    t.string "country"
    t.string "city"
    t.string "instagram"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "penalties", force: :cascade do |t|
    t.string "name"
    t.string "penalty_code"
    t.string "description"
    t.string "hand_signal"
  end

  create_table "players", force: :cascade do |t|
    t.string "calling_name"
    t.string "family_name"
    t.string "derby_name"
    t.string "derby_number"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_players_on_email", unique: true
    t.index ["reset_password_token"], name: "index_players_on_reset_password_token", unique: true
  end

  add_foreign_key "league_in_the_games", "games"
  add_foreign_key "league_in_the_games", "leagues"
end
