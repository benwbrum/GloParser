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

ActiveRecord::Schema.define(version: 20140115183742) do

  create_table "glo_collections", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "glo_records", force: true do |t|
    t.integer  "glo_id"
    t.string   "abstract_url"
    t.string   "collection_name"
    t.string   "file_url"
    t.string   "file_number"
    t.string   "grantee"
    t.string   "patentee"
    t.string   "pdf_url"
    t.string   "remarks"
    t.integer  "glo_collection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "glo_records", ["glo_collection_id"], name: "index_glo_records_on_glo_collection_id", using: :btree

  create_table "tx_land_grants_efns", force: true do |t|
    t.string   "field_note"
    t.integer  "control"
    t.string   "pdf_exists"
    t.string   "file_no"
    t.string   "record_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tx_land_grants_special_collections", force: true do |t|
    t.integer  "control"
    t.integer  "glo_id"
    t.string   "district"
    t.string   "county"
    t.integer  "page"
    t.integer  "abstract"
    t.string   "abstract2"
    t.string   "orig_grantee"
    t.string   "certificate"
    t.string   "patentee"
    t.string   "patent_date"
    t.string   "patent_no"
    t.string   "patent_vol"
    t.string   "part_section"
    t.string   "survey_blk_tsp"
    t.text     "acres"
    t.string   "adj_county"
    t.string   "adj_acres"
    t.string   "glo_class"
    t.string   "file_no"
    t.text     "comment"
    t.string   "class_prefix"
    t.string   "class_suffix"
    t.string   "internal_comment"
    t.string   "external_comment"
    t.string   "collection_type"
    t.string   "title_date"
    t.string   "web_display"
    t.string   "doc_adoptable"
    t.string   "acquittance_date"
    t.string   "acquittance_no"
    t.string   "acquittance_vol"
    t.decimal  "acquittance_acres", precision: 10, scale: 0
    t.string   "pdf_exists"
    t.integer  "pdf_size_bytes"
    t.date     "pdf_dir_date"
    t.string   "aka"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
