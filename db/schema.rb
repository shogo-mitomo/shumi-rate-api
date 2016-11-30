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

ActiveRecord::Schema.define(version: 20161126171038) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade, comment: "市区町村" do |t|
    t.string   "code",                      null: false, comment: "市区町村コード"
    t.string   "name",                      null: false, comment: "市区町村名"
    t.integer  "big_city_flag",             null: false, comment: "特別区・行政区フラグ"
    t.integer  "population",    default: 0, null: false, comment: "人口"
    t.integer  "prefecture_id",             null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["code"], name: "index_cities_on_code", unique: true, using: :btree
    t.index ["prefecture_id"], name: "index_cities_on_prefecture_id", using: :btree
  end

  create_table "counts", force: :cascade, comment: "取得件数" do |t|
    t.string   "type",                   null: false, comment: "取得件数種別"
    t.integer  "value",      default: 0, null: false, comment: "取得件数値"
    t.integer  "city_id",                null: false
    t.integer  "hobby_id",               null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["city_id"], name: "index_counts_on_city_id", using: :btree
    t.index ["hobby_id"], name: "index_counts_on_hobby_id", using: :btree
    t.index ["type"], name: "index_counts_on_type", using: :btree
  end

  create_table "hobbies", force: :cascade, comment: "趣味" do |t|
    t.string   "name",       null: false, comment: "趣味名"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_hobbies_on_name", unique: true, using: :btree
  end

  create_table "prefectures", force: :cascade, comment: "都道府県" do |t|
    t.integer  "code",       null: false, comment: "都道府県コード"
    t.string   "name",       null: false, comment: "都道府県名"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_prefectures_on_code", unique: true, using: :btree
  end

  add_foreign_key "cities", "prefectures"
  add_foreign_key "counts", "cities"
  add_foreign_key "counts", "hobbies"
end
