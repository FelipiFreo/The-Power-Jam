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

ActiveRecord::Schema[7.1].define(version: 2024_02_25_025451) do
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

  create_table "jam_finished_bies", force: :cascade do |t|
    t.string "finished_by"
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

  create_table "line_ups", force: :cascade do |t|
    t.bigint "jammer_a_id", null: false
    t.bigint "pivot_a_id", null: false
    t.bigint "blocker1_a_id", null: false
    t.bigint "blocker2_a_id", null: false
    t.bigint "blocker3_a_id", null: false
    t.boolean "has_pivot_cap_a"
    t.bigint "jammer_b_id", null: false
    t.bigint "pivot_b_id", null: false
    t.bigint "blocker1_b_id", null: false
    t.bigint "blocker2_b_id", null: false
    t.bigint "blocker3_b_id", null: false
    t.boolean "has_pivot_cap_b"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blocker1_a_id"], name: "index_line_ups_on_blocker1_a_id"
    t.index ["blocker1_b_id"], name: "index_line_ups_on_blocker1_b_id"
    t.index ["blocker2_a_id"], name: "index_line_ups_on_blocker2_a_id"
    t.index ["blocker2_b_id"], name: "index_line_ups_on_blocker2_b_id"
    t.index ["blocker3_a_id"], name: "index_line_ups_on_blocker3_a_id"
    t.index ["blocker3_b_id"], name: "index_line_ups_on_blocker3_b_id"
    t.index ["jammer_a_id"], name: "index_line_ups_on_jammer_a_id"
    t.index ["jammer_b_id"], name: "index_line_ups_on_jammer_b_id"
    t.index ["pivot_a_id"], name: "index_line_ups_on_pivot_a_id"
    t.index ["pivot_b_id"], name: "index_line_ups_on_pivot_b_id"
  end

  create_table "official_positions", force: :cascade do |t|
    t.string "official_position"
    t.string "official_position_code"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "officials_in_the_games", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "official_position_id", null: false
    t.bigint "player_id", null: false
    t.boolean "is_shadowing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_officials_in_the_games_on_game_id"
    t.index ["official_position_id"], name: "index_officials_in_the_games_on_official_position_id"
    t.index ["player_id"], name: "index_officials_in_the_games_on_player_id"
  end

  create_table "penalties", force: :cascade do |t|
    t.string "name"
    t.string "penalty_code"
    t.string "description"
    t.string "hand_signal"
  end

  create_table "player_in_the_leagues", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "league_id", null: false
    t.date "start_date"
    t.date "exit_date"
    t.string "derby_name"
    t.string "derby_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_player_in_the_leagues_on_league_id"
    t.index ["player_id"], name: "index_player_in_the_leagues_on_player_id"
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

  create_table "players_in_the_roosters", force: :cascade do |t|
    t.bigint "rooster_id", null: false
    t.bigint "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_players_in_the_roosters_on_player_id"
    t.index ["rooster_id"], name: "index_players_in_the_roosters_on_rooster_id"
  end

  create_table "roosters", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.string "team_name"
    t.integer "team_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_roosters_on_game_id"
  end

  add_foreign_key "league_in_the_games", "games"
  add_foreign_key "league_in_the_games", "leagues"
  add_foreign_key "line_ups", "players_in_the_roosters", column: "blocker1_a_id"
  add_foreign_key "line_ups", "players_in_the_roosters", column: "blocker1_b_id"
  add_foreign_key "line_ups", "players_in_the_roosters", column: "blocker2_a_id"
  add_foreign_key "line_ups", "players_in_the_roosters", column: "blocker2_b_id"
  add_foreign_key "line_ups", "players_in_the_roosters", column: "blocker3_a_id"
  add_foreign_key "line_ups", "players_in_the_roosters", column: "blocker3_b_id"
  add_foreign_key "line_ups", "players_in_the_roosters", column: "jammer_a_id"
  add_foreign_key "line_ups", "players_in_the_roosters", column: "jammer_b_id"
  add_foreign_key "line_ups", "players_in_the_roosters", column: "pivot_a_id"
  add_foreign_key "line_ups", "players_in_the_roosters", column: "pivot_b_id"
  add_foreign_key "officials_in_the_games", "games"
  add_foreign_key "officials_in_the_games", "official_positions"
  add_foreign_key "officials_in_the_games", "players"
  add_foreign_key "player_in_the_leagues", "leagues"
  add_foreign_key "player_in_the_leagues", "players"
  add_foreign_key "players_in_the_roosters", "players"
  add_foreign_key "players_in_the_roosters", "roosters"
  add_foreign_key "roosters", "games"
end
