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

ActiveRecord::Schema.define(version: 2020_08_21_085708) do

  create_table "comments", force: :cascade do |t|
    t.string "comment"
    t.integer "user_id", null: false
    t.integer "post_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "post_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_likes_on_post_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "players", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "team"
    t.integer "total"
    t.integer "level"
    t.string "stronger_foot"
    t.integer "height"
    t.integer "age"
    t.string "country"
    t.string "position"
    t.string "Playing_styles"
    t.integer "cost"
    t.string "icon"
    t.integer "offensive_awareness"
    t.integer "ball_control"
    t.integer "dribbling"
    t.integer "tight_possession"
    t.integer "low_pass"
    t.integer "lofted_pass"
    t.integer "finishing"
    t.integer "heading"
    t.integer "set_piece_taking"
    t.integer "speed"
    t.integer "acceleration"
    t.integer "kicking_power"
    t.string "jump"
    t.integer "jumping"
    t.integer "physical_contact"
    t.integer "balance"
    t.integer "stamina"
    t.integer "defensive_awareness"
    t.integer "ball_winning"
    t.integer "aggression"
    t.integer "gk_awareness"
    t.integer "gk_cathing"
    t.integer "gk_clearing"
    t.integer "gk_reflexes"
    t.integer "gk_reach"
    t.integer "weak_foot_usage"
    t.integer "weak_foot_accuracy"
    t.integer "conditioning"
    t.integer "injury_resistance"
    t.string "Skills"
    t.text "play_skills"
    t.integer "curve"
    t.string "positions"
  end

  create_table "posts", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "body"
    t.string "image"
    t.integer "user_id"
    t.string "video"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "follow_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["follow_id"], name: "index_relationships_on_follow_id"
    t.index ["user_id", "follow_id"], name: "index_relationships_on_user_id_and_follow_id", unique: true
    t.index ["user_id"], name: "index_relationships_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "player_id", null: false
    t.string "content"
    t.integer "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_reviews_on_player_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.text "plofile"
    t.string "image_name"
    t.string "image"
    t.string "scud"
    t.string "rate"
    t.string "userid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "likes", "posts"
  add_foreign_key "likes", "users"
  add_foreign_key "relationships", "users"
  add_foreign_key "relationships", "users", column: "follow_id"
  add_foreign_key "reviews", "players"
  add_foreign_key "reviews", "users"
end
