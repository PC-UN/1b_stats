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

ActiveRecord::Schema.define(version: 20180316214149) do

  create_table "disposal_points", force: :cascade do |t|
    t.string "disposal_point_name"
    t.string "disposal_point_address"
    t.string "city"
    t.string "department"
    t.string "country"
    t.string "residue_category"
    t.string "residue_type"
    t.string "residue_name"
    t.string "location"
    t.string "schedule"
    t.string "postconsumption_program_name"
    t.string "contact_person"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
