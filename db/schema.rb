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

ActiveRecord::Schema.define(:version => 20120318140604) do

  create_table "pojazdies", :force => true do |t|
    t.string   "nr_rejestracyjnyn"
    t.string   "marka"
    t.string   "dysponent"
    t.integer  "stan_licznika"
    t.string   "lokalizacja"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "przyjazdies", :force => true do |t|
    t.string   "data_przyj"
    t.string   "godz_przy"
    t.integer  "stan_licz"
    t.string   "zat_paliwo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nr_rej"
  end

  create_table "searches", :force => true do |t|
    t.string   "marka"
    t.string   "lokalizacja"
    t.string   "dysponent"
    t.integer  "min_stan"
    t.integer  "max_stan"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.integer  "roles_mask"
    t.string   "role"
    t.integer  "user_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "wyjazdies", :force => true do |t|
    t.string   "data_wyjazdu"
    t.string   "godz_wyjazdu"
    t.string   "marka_poj"
    t.string   "nr_rej"
    t.string   "kierowca"
    t.string   "miejsce"
    t.integer  "stan_licznika"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
