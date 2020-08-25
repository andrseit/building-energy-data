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

ActiveRecord::Schema.define(version: 2020_08_25_161434) do

  create_table "buildings", force: :cascade do |t|
    t.text "description"
    t.string "construction_year"
    t.text "location"
    t.float "location_x"
    t.float "location_y"
    t.integer "flats"
    t.integer "floors"
    t.boolean "cellar"
    t.boolean "bim"
    t.decimal "roof_area"
    t.decimal "blind_facade_area"
    t.decimal "opend_facade_area"
    t.decimal "gross_surface_area"
    t.decimal "total_pra"
    t.decimal "process_pra"
    t.decimal "product_pra"
  end

  create_table "sensors", force: :cascade do |t|
    t.integer "building_id"
    t.integer "category"
  end

end
