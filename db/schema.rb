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

ActiveRecord::Schema.define(version: 20170219092503) do

  create_table "favorites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_favorites_on_teacher_id", using: :btree
    t.index ["user_id"], name: "index_favorites_on_user_id", using: :btree
  end

  create_table "messages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "body",       limit: 65535, null: false
    t.integer  "age"
    t.integer  "user_id"
    t.integer  "teacher_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["teacher_id"], name: "index_messages_on_teacher_id", using: :btree
    t.index ["user_id"], name: "index_messages_on_user_id", using: :btree
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title",                    null: false
    t.string   "image"
    t.text     "detail",     limit: 65535
    t.integer  "teacher_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["teacher_id"], name: "index_posts_on_teacher_id", using: :btree
  end

  create_table "reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "body",       limit: 65535, null: false
    t.string   "rate"
    t.integer  "user_id"
    t.integer  "teacher_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["teacher_id"], name: "index_reviews_on_teacher_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "teachers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.integer  "age",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_teachers_on_name", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.integer  "age",        null: false
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_users_on_name", using: :btree
  end

  add_foreign_key "favorites", "teachers"
  add_foreign_key "favorites", "users"
  add_foreign_key "messages", "teachers"
  add_foreign_key "messages", "users"
  add_foreign_key "posts", "teachers"
  add_foreign_key "reviews", "teachers"
  add_foreign_key "reviews", "users"
end
