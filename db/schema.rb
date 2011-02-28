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

ActiveRecord::Schema.define(:version => 20110227183259) do

  create_table "certificate_of_conformities", :force => true do |t|
    t.integer  "customer_id"
    t.integer  "delivery_note_nb"
    t.integer  "status_id"
    t.string   "part_number"
    t.string   "assembly_code"
    t.integer  "certificate_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "generated_id"
    t.string   "generated_string"
  end

  create_table "certificate_of_conformity_responses", :force => true do |t|
    t.string   "user_name"
    t.string   "certificate_of_conformity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "certificate_types", :force => true do |t|
    t.string   "typename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
