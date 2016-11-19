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

ActiveRecord::Schema.define(version: 20161119050617) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "name",        limit: 65535
    t.text     "description", limit: 65535
    t.string   "status"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "ruc"
    t.string   "name"
    t.string   "address"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "ruc"
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.date     "register_date"
    t.integer  "card_type"
    t.string   "card_number"
    t.string   "status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "oportunities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.text     "description",    limit: 65535
    t.decimal  "budget",                       precision: 10
    t.string   "money"
    t.date     "published_date"
    t.date     "deadline"
    t.date     "result_date"
    t.integer  "company_id"
    t.integer  "category_id"
    t.string   "status"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.index ["category_id"], name: "index_oportunities_on_category_id", using: :btree
    t.index ["company_id"], name: "index_oportunities_on_company_id", using: :btree
  end

  create_table "subscriptions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "customer_id"
    t.integer  "category_id"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_subscriptions_on_category_id", using: :btree
    t.index ["customer_id"], name: "index_subscriptions_on_customer_id", using: :btree
  end

  add_foreign_key "oportunities", "categories"
  add_foreign_key "oportunities", "companies"
  add_foreign_key "subscriptions", "categories"
  add_foreign_key "subscriptions", "customers"
end
