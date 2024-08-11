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

ActiveRecord::Schema[7.0].define(version: 2024_08_11_020229) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorite_routes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "route_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["route_id"], name: "index_favorite_routes_on_route_id"
    t.index ["user_id"], name: "index_favorite_routes_on_user_id"
  end

  create_table "favorite_sites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "site_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_favorite_sites_on_site_id"
    t.index ["user_id"], name: "index_favorite_sites_on_user_id"
  end

  create_table "route_notes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "route_id", null: false
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["route_id"], name: "index_route_notes_on_route_id"
    t.index ["user_id"], name: "index_route_notes_on_user_id"
  end

  create_table "routes", force: :cascade do |t|
    t.string "name"
    t.float "distance"
    t.float "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "site_notes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "site_id", null: false
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_site_notes_on_site_id"
    t.index ["user_id"], name: "index_site_notes_on_user_id"
  end

  create_table "site_reviews", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "site_id", null: false
    t.string "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_site_reviews_on_site_id"
    t.index ["user_id"], name: "index_site_reviews_on_user_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "favorite_routes", "routes"
  add_foreign_key "favorite_routes", "users"
  add_foreign_key "favorite_sites", "sites"
  add_foreign_key "favorite_sites", "users"
  add_foreign_key "route_notes", "routes"
  add_foreign_key "route_notes", "users"
  add_foreign_key "site_notes", "sites"
  add_foreign_key "site_notes", "users"
  add_foreign_key "site_reviews", "sites"
  add_foreign_key "site_reviews", "users"
end
