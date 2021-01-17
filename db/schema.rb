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

ActiveRecord::Schema.define(version: 2020_12_29_131742) do

  create_table "ingredients", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "name_scientific"
    t.text "description"
    t.string "itis_id"
    t.string "wikipedia_id"
    t.string "picture_file_name"
    t.string "picture_content_type"
    t.string "picture_file_size"
    t.string "picture_updated_at"
    t.string "legacy_id"
    t.string "food_group"
    t.string "food_subgroup"
    t.string "food_type"
    t.string "created_at"
    t.string "updated_at"
    t.string "creator_id"
    t.string "updater_id"
    t.string "export_to_afcdb"
    t.string "category"
    t.string "ncbi_taxonomy_id"
    t.string "export_to_foodb"
    t.string "public_id"
  end

  create_table "instructions", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "recipe_id"
    t.integer "order"
    t.text "action"
    t.index ["recipe_id"], name: "index_instructions_on_recipe_id"
  end

  create_table "recipes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "URL"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipes_ingredients", id: false, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "recipe_id"
    t.bigint "ingredient_id"
    t.string "quantity"
    t.index ["ingredient_id"], name: "index_recipes_ingredients_on_ingredient_id"
    t.index ["recipe_id"], name: "index_recipes_ingredients_on_recipe_id"
  end

end
