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

ActiveRecord::Schema.define(version: 2019_11_05_214007) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coffees", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "coffees_flavor_notes", force: :cascade do |t|
    t.bigint "coffee_id", null: false
    t.bigint "flavor_note_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coffee_id"], name: "index_coffees_flavor_notes_on_coffee_id"
    t.index ["flavor_note_id"], name: "index_coffees_flavor_notes_on_flavor_note_id"
  end

  create_table "flavor_notes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "flavor_notes_users", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "flavor_note_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flavor_note_id"], name: "index_flavor_notes_users_on_flavor_note_id"
    t.index ["user_id"], name: "index_flavor_notes_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "birthday"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "coffees_flavor_notes", "coffees"
  add_foreign_key "coffees_flavor_notes", "flavor_notes"
  add_foreign_key "flavor_notes_users", "flavor_notes"
  add_foreign_key "flavor_notes_users", "users"
end
