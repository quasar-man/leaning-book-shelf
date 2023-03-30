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

ActiveRecord::Schema[7.0].define(version: 2023_03_30_125857) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "book_reviews", force: :cascade do |t|
    t.bigint "leaning_user_id"
    t.bigint "book_id"
    t.text "comment"
    t.float "score"
    t.boolean "is_available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_reviews_on_book_id"
    t.index ["leaning_user_id"], name: "index_book_reviews_on_leaning_user_id"
  end

  create_table "book_score_avarages", force: :cascade do |t|
    t.bigint "book_id"
    t.decimal "avarage_score", precision: 3, scale: 2
    t.float "total_score"
    t.integer "score_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_score_avarages_on_book_id"
  end

  create_table "books", force: :cascade do |t|
    t.bigint "leaning_users_id"
    t.bigint "publisher_id"
    t.string "title"
    t.string "api_url"
    t.string "thumbnail_url"
    t.string "image_url"
    t.date "published_date"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["leaning_users_id"], name: "index_books_on_leaning_users_id"
    t.index ["publisher_id"], name: "index_books_on_publisher_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leaning_users", force: :cascade do |t|
    t.string "session_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
