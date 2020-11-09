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

ActiveRecord::Schema.define(version: 2020_11_06_232835) do

  create_table "bots", force: :cascade do |t|
    t.string "bot_name"
    t.integer "speed"
    t.integer "strength"
    t.integer "agility"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rosters", force: :cascade do |t|
    t.integer "team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "starter_one"
    t.integer "starter_two"
    t.integer "starter_three"
    t.integer "starter_four"
    t.integer "starter_five"
    t.integer "starter_six"
    t.integer "starter_seven"
    t.integer "starter_eight"
    t.integer "starter_nine"
    t.integer "starter_ten"
    t.integer "alternate_one"
    t.integer "alternate_two"
    t.integer "alternate_three"
    t.integer "alternate_four"
    t.integer "alternate_five"
    t.index ["team_id"], name: "index_rosters_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "team_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "rosters", "teams"
end
