# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_11_193438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "championships", id: :bigint, default: nil, force: :cascade do |t|
    t.text "name", null: false
    t.string "uuid", limit: 255, default: -> { "gen_random_uuid()" }, null: false
    t.datetime "created_at", precision: 6, default: -> { "now()" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "now()" }, null: false
    t.index ["uuid"], name: "championships_uuid_key", unique: true
  end

  create_table "games", id: :bigint, default: nil, force: :cascade do |t|
    t.integer "gameweek_id", null: false
    t.datetime "start_at", precision: 6
    t.datetime "created_at", precision: 6, default: -> { "now()" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "now()" }, null: false
    t.index ["gameweek_id"], name: "games_gameweek_id_index"
  end

  create_table "games_teams", id: :bigint, default: nil, force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "team_id", null: false
    t.boolean "home_team"
    t.datetime "created_at", precision: 6, default: -> { "now()" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "now()" }, null: false
    t.index ["game_id", "team_id"], name: "games_teams_game_id_team_id_index", unique: true
  end

  create_table "gameweeks", id: :bigint, default: nil, force: :cascade do |t|
    t.integer "championship_id", null: false
    t.integer "position", null: false
    t.datetime "deadline_at", precision: 6
    t.datetime "created_at", precision: 6, default: -> { "now()" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "now()" }, null: false
    t.index ["championship_id"], name: "gameweeks_championship_id_index"
  end

  create_table "gameweeks_players", id: :bigint, default: nil, force: :cascade do |t|
    t.integer "gameweek_id", null: false
    t.integer "player_id", null: false
    t.integer "points"
    t.datetime "created_at", precision: 6, default: -> { "now()" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "now()" }, null: false
    t.index ["gameweek_id", "player_id"], name: "gameweeks_players_gameweek_id_player_id_index", unique: true
  end

  create_table "lineups", id: :bigint, default: nil, force: :cascade do |t|
    t.integer "users_team_id", null: false
    t.integer "gameweek_id", null: false
    t.integer "points", default: 0, null: false
    t.string "uuid", limit: 255, default: -> { "gen_random_uuid()" }, null: false
    t.datetime "created_at", precision: 6, default: -> { "now()" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "now()" }, null: false
    t.index ["users_team_id", "gameweek_id"], name: "lineups_users_team_id_gameweek_id_index", unique: true
    t.index ["uuid"], name: "lineups_uuid_key", unique: true
  end

  create_table "lineups_players", id: :bigint, default: nil, force: :cascade do |t|
    t.integer "lineup_id", null: false
    t.integer "player_id", null: false
    t.boolean "starter"
    t.integer "order"
    t.datetime "created_at", precision: 6, default: -> { "now()" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "now()" }, null: false
    t.index ["lineup_id", "player_id"], name: "lineups_players_lineup_id_player_id_index", unique: true
  end

  create_table "players", id: :bigint, default: nil, force: :cascade do |t|
    t.text "name", null: false
    t.integer "team_id"
    t.integer "position", null: false
    t.string "uuid", limit: 255, default: -> { "gen_random_uuid()" }, null: false
    t.datetime "created_at", precision: 6, default: -> { "now()" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "now()" }, null: false
    t.integer "price_cents"
    t.index ["team_id"], name: "players_team_id_index"
    t.index ["uuid"], name: "players_uuid_key", unique: true
  end

  create_table "teams", id: :bigint, default: nil, force: :cascade do |t|
    t.text "name", null: false
    t.integer "championship_id", null: false
    t.string "uuid", limit: 255, default: -> { "gen_random_uuid()" }, null: false
    t.datetime "created_at", precision: 6, default: -> { "now()" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "now()" }, null: false
    t.index ["championship_id"], name: "teams_championship_id_index"
    t.index ["uuid"], name: "teams_uuid_key", unique: true
  end

  create_table "transfers", id: :bigint, default: nil, force: :cascade do |t|
    t.integer "users_team_id", null: false
    t.integer "gameweek_id", null: false
    t.datetime "created_at", precision: 6, default: -> { "now()" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "now()" }, null: false
    t.index ["users_team_id", "gameweek_id"], name: "transfers_users_team_id_gameweek_id_index"
  end

  create_table "transfers_players", id: :bigint, default: nil, force: :cascade do |t|
    t.integer "transfer_id", null: false
    t.integer "player_id", null: false
    t.boolean "income"
    t.datetime "created_at", precision: 6, default: -> { "now()" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "now()" }, null: false
    t.index ["transfer_id", "player_id"], name: "transfers_players_transfer_id_player_id_index", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_teams", id: :bigint, default: nil, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "championship_id", null: false
    t.string "name", limit: 255, null: false
    t.string "uuid", limit: 255, default: -> { "gen_random_uuid()" }, null: false
    t.datetime "created_at", precision: 6, default: -> { "now()" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "now()" }, null: false
    t.integer "bank_value_cents", default: 10000
    t.boolean "completed", default: false
    t.index ["user_id", "championship_id"], name: "users_teams_user_id_championship_id_index", unique: true
    t.index ["uuid"], name: "users_teams_uuid_key", unique: true
  end

  create_table "users_teams_players", id: :bigint, default: nil, force: :cascade do |t|
    t.integer "users_team_id", null: false
    t.integer "player_id", null: false
    t.datetime "created_at", precision: 6, default: -> { "now()" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "now()" }, null: false
    t.index ["users_team_id", "player_id"], name: "users_teams_players_users_team_id_player_id_index", unique: true
  end

end
