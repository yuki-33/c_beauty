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

ActiveRecord::Schema.define(version: 2020_04_20_144326) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "inquiries", force: :cascade do |t|
    t.integer "shop_id"
    t.integer "menu_id"
    t.string "name"
    t.string "email"
    t.string "tel"
    t.datetime "datetime_1"
    t.datetime "datetime_2"
    t.datetime "datetime_3"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menus", force: :cascade do |t|
    t.integer "shop_id"
    t.string "menu"
    t.string "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shop_categories", force: :cascade do |t|
    t.integer "shop_id"
    t.integer "category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "adress"
    t.string "tel"
    t.string "business_hour"
    t.string "regular_closed"
    t.integer "area_id"
    t.text "introduction"
    t.string "status"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.string "website"
    t.string "image_2"
    t.string "image_3"
    t.string "image_4"
    t.string "image_owner"
    t.string "image_employee"
    t.text "about_us"
    t.string "instagram"
    t.string "facebook"
    t.string "shop_name_katakana"
    t.string "owner_name"
    t.string "owner_name_katakana"
    t.string "employee_name"
    t.string "employee_name_katakana"
    t.text "about_owner"
    t.text "about_employee"
    t.string "image_top"
  end

end
