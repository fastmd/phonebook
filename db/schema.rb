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

ActiveRecord::Schema.define(version: 20150326160848) do

  create_table "abrecs", force: :cascade do |t|
    t.string   "org"
    t.string   "serv"
    t.string   "office"
    t.string   "position"
    t.string   "runame"
    t.string   "rusurname"
    t.string   "rufname"
    t.string   "roname"
    t.string   "rosurname"
    t.string   "rofname"
    t.string   "tel"
    t.string   "mtel"
    t.string   "rtel"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "russerv"
    t.string   "ruoffice"
    t.string   "ruorg"
  end

end
