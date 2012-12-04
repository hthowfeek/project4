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
# It's strongly recommended to check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20121203175047) do

  create_table "showings", :force => true do |t|
    t.integer  "movie_id"
    t.time     "showing_time"
    t.integer  "number_of_available_seats"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20121202182107) do

  create_table "movies", :force => true do |t|
    t.string   "title"
    t.text     "cast"
    t.string   "genre"
    t.string   "rating"
    t.string   "duration"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "image"
=======
ActiveRecord::Schema.define(:version => 20121202080606) do

  create_table "bookings", :force => true do |t|
    t.integer  "movie_id"
    t.integer  "showing_id"
    t.integer  "number_of_seats"
    t.string   "customer_name"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
>>>>>>> cf689ec039efc945622cc0d57f2f57fd78a82dc1
>>>>>>> dd6f96aa6c788079a1ea6933ffbd8b3916b205e2
  end

end
