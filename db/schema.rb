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

ActiveRecord::Schema.define(version: 20150427042323) do

  create_table "cpus", force: :cascade do |t|
    t.integer  "price"
    t.string   "maker",         limit: 255
    t.string   "model",         limit: 255
    t.string   "freq",          limit: 255
    t.integer  "cores"
    t.string   "L1_cache",      limit: 255
    t.string   "L2_cache",      limit: 255
    t.string   "chipset",       limit: 255
    t.string   "overclockable", limit: 255
    t.string   "power_needed",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drams", force: :cascade do |t|
    t.integer  "price"
    t.string   "maker",            limit: 255
    t.string   "model",            limit: 255
    t.string   "type",             limit: 255
    t.string   "size",             limit: 255
    t.string   "freq",             limit: 255
    t.string   "transfer_rate",    limit: 255
    t.string   "for_server_or_pc", limit: 255
    t.string   "power_needed",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gpus", force: :cascade do |t|
    t.integer  "price"
    t.string   "maker",              limit: 255
    t.string   "model",              limit: 255
    t.string   "cuda_cores",         limit: 255
    t.string   "dram",               limit: 255
    t.string   "freq",               limit: 255
    t.string   "connection",         limit: 255
    t.string   "power_needed",       limit: 255
    t.integer  "supported_displays"
    t.string   "flops",              limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hdds", force: :cascade do |t|
    t.integer  "price"
    t.string   "maker",         limit: 255
    t.string   "model",         limit: 255
    t.string   "size",          limit: 255
    t.string   "freq",          limit: 255
    t.string   "transfer_rate", limit: 255
    t.string   "r_w_rate",      limit: 255
    t.string   "connection",    limit: 255
    t.string   "power_needed",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "motherboards", force: :cascade do |t|
    t.integer  "price"
    t.string   "maker",                      limit: 255
    t.string   "model",                      limit: 255
    t.string   "socket",                     limit: 255
    t.string   "wireless",                   limit: 255
    t.string   "chipset",                    limit: 255
    t.string   "dram_type",                  limit: 255
    t.string   "max_dram_speed_supported",   limit: 255
    t.string   "total_dram_allowed",         limit: 255
    t.string   "power_supply_pin_connector", limit: 255
    t.string   "usb3_ports",                 limit: 255
    t.string   "usb2_ports",                 limit: 255
    t.string   "pci_ports",                  limit: 255
    t.string   "pcie_ports",                 limit: 255
    t.string   "power_needed",               limit: 255
    t.string   "dimensions",                 limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "channel_supported",          limit: 255
    t.integer  "pcie3x16_ports"
    t.integer  "pcie2x16_ports"
    t.integer  "mini_card_slots"
    t.integer  "sata_exp_ports"
    t.integer  "m2_ports"
    t.string   "lan_chipset",                limit: 255
    t.string   "second_lan_chipset",         limit: 255
    t.string   "max_lan_speed",              limit: 255
    t.integer  "ps2_ports"
    t.integer  "dvi_i_ports"
    t.integer  "hdmi_ports"
    t.integer  "display_ports"
    t.integer  "esata_ports"
    t.integer  "s_pdif_out_ports"
    t.integer  "audio_ports"
    t.string   "other_internal_ports",       limit: 255
    t.string   "number_of_memory_slots"
  end

  create_table "powersupplies", force: :cascade do |t|
    t.integer  "price"
    t.string   "maker",      limit: 255
    t.string   "model",      limit: 255
    t.string   "power",      limit: 255
    t.string   "rails",      limit: 255
    t.string   "connection", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ssds", force: :cascade do |t|
    t.integer  "price"
    t.string   "maker",         limit: 255
    t.string   "model",         limit: 255
    t.string   "size",          limit: 255
    t.string   "freq",          limit: 255
    t.string   "transfer_rate", limit: 255
    t.string   "r_w_rate",      limit: 255
    t.string   "connection",    limit: 255
    t.string   "power_needed",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "towers", force: :cascade do |t|
    t.integer  "price"
    t.string   "maker",      limit: 255
    t.string   "model",      limit: 255
    t.string   "dimensions", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
