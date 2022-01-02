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

ActiveRecord::Schema.define(version: 2021_12_28_215057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "armies", force: :cascade do |t|
    t.integer "kingdom_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "building_resources", force: :cascade do |t|
    t.integer "amount"
    t.integer "collect_cooldown"
    t.datetime "last_collected_at"
    t.integer "building_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "buildings", force: :cascade do |t|
    t.string "name"
    t.string "resource"
    t.string "img"
    t.integer "sell_amt"
    t.integer "kingdom_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kingdoms", force: :cascade do |t|
    t.string "name"
    t.string "emblem"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "levels", force: :cascade do |t|
    t.integer "point_cap"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.string "img"
    t.integer "amount"
    t.integer "kingdom_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "store_buildings", force: :cascade do |t|
    t.integer "cost"
    t.string "name"
    t.string "description"
    t.integer "unlock_level"
    t.integer "store_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "store_resources", force: :cascade do |t|
    t.integer "cost"
    t.string "name"
    t.integer "amount"
    t.integer "unlock_level"
    t.integer "store_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "store_units", force: :cascade do |t|
    t.integer "cost"
    t.string "name"
    t.string "description"
    t.integer "attack"
    t.integer "defense"
    t.integer "unlock_level"
    t.integer "store_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stores", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.integer "attack"
    t.integer "defense"
    t.string "img"
    t.integer "army_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "exp"
    t.integer "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
