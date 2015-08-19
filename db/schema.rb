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

ActiveRecord::Schema.define(version: 20150812165839) do

  create_table "authorizations", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.string   "token"
    t.string   "secret"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", force: :cascade do |t|
    t.integer  "property_id"
    t.string   "file"
    t.string   "filename"
    t.string   "category"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "documents", ["property_id"], name: "index_documents_on_property_id"

  create_table "extras", force: :cascade do |t|
    t.integer  "property_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "extras", ["property_id"], name: "index_extras_on_property_id"

  create_table "leadership_team_members", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.text     "synopsis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "sponsor_id"
  end

  add_index "leadership_team_members", ["sponsor_id"], name: "index_leadership_team_members_on_sponsor_id"

  create_table "properties", force: :cascade do |t|
    t.string   "name"
    t.integer  "purchase_price"
    t.integer  "min_investment"
    t.text     "overview"
    t.integer  "targeted_irr"
    t.integer  "targeted_hold_period"
    t.integer  "targeted_yield"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "address_street"
    t.string   "address_city"
    t.string   "address_state"
    t.string   "address_zipcode"
    t.integer  "sponsor_id"
  end

  add_index "properties", ["sponsor_id"], name: "index_properties_on_sponsor_id"

  create_table "propimages", force: :cascade do |t|
    t.integer  "property_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image_name"
  end

  add_index "propimages", ["property_id"], name: "index_propimages_on_property_id"

  create_table "sponsors", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "logo"
    t.string   "name"
    t.text     "synopsis"
    t.string   "address_street"
    t.string   "address_city"
    t.string   "address_state"
    t.string   "address_zipcode"
    t.string   "phone_number"
    t.string   "website"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "role",                   default: "visitor", null: false
    t.string   "email",                  default: "",        null: false
    t.string   "encrypted_password",     default: "",        null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,         null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
