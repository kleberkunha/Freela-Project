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

ActiveRecord::Schema[7.0].define(version: 2023_03_30_122734) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.float "price"
    t.string "author"
    t.string "link_page"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "colega_tradutors", force: :cascade do |t|
    t.string "name"
    t.string "url_page"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "conversa_passadas", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "created_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "link_externos", force: :cascade do |t|
    t.string "title"
    t.string "url_page"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "na_imprensas", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "parceiros", force: :cascade do |t|
    t.string "name"
    t.string "url_page"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.text "intro"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "descriptionTwo"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "full_name"
    t.string "phone"
    t.text "description"
    t.text "home_main_text"
    t.integer "conversas_passadas_id"
    t.integer "na_imprensa_id"
    t.integer "links_externos_id"
    t.integer "colegas_tradutores_id"
    t.integer "parceiros_id"
    t.integer "books_id"
    t.text "service1"
    t.text "service2"
    t.text "service3"
    t.text "service4"
    t.text "member"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"],
            name: "index_users_on_reset_password_token",
            unique: true
  end
end
