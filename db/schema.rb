# encoding: UTF-8
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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160713155923) do
=======
ActiveRecord::Schema.define(version: 20160713152926) do
>>>>>>> 828444b356e7350dd90b7468157a8b12c82c152d

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
  create_table "amount_of_ingredients", force: :cascade do |t|
    t.integer  "amount"
    t.integer  "ingredient_id"
    t.integer  "measurement_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "amount_of_ingredients", ["ingredient_id"], name: "index_amount_of_ingredients_on_ingredient_id", using: :btree
  add_index "amount_of_ingredients", ["measurement_id"], name: "index_amount_of_ingredients_on_measurement_id", using: :btree

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "measurements", force: :cascade do |t|
    t.string   "name"
=======
  create_table "categories", force: :cascade do |t|
    t.string   "name",       null: false
>>>>>>> 828444b356e7350dd90b7468157a8b12c82c152d
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  add_foreign_key "amount_of_ingredients", "ingredients"
  add_foreign_key "amount_of_ingredients", "measurements"
=======
  create_table "recipes", force: :cascade do |t|
    t.string   "name",           limit: 120
    t.integer  "difficulty",                 null: false
    t.text     "description",                null: false
    t.text     "instructions",               null: false
    t.integer  "user_id",                    null: false
    t.integer  "category_id_id",             null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

>>>>>>> 828444b356e7350dd90b7468157a8b12c82c152d
end
