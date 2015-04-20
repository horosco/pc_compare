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

ActiveRecord::Schema.define(version: 20150414042231) do

  create_table "cpus", force: true do |t|
    t.integer  "price"
    t.string   "maker"
    t.string   "model"
    t.string   "freq"
    t.integer  "cores"
    t.string   "L1_cache"
    t.string   "L2_cache"
    t.string   "chipset"
    t.string   "overclockable"
    t.string   "power_needed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drams", force: true do |t|
    t.integer  "price"
    t.string   "maker"
    t.string   "model"
    t.string   "type"
    t.string   "size"
    t.string   "freq"
    t.string   "transfer_rate"
    t.string   "for_server_or_pc"
    t.string   "power_needed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gpus", force: true do |t|
    t.integer  "price"
    t.string   "maker"
    t.string   "model"
    t.string   "cuda_cores"
    t.string   "dram"
    t.string   "freq"
    t.string   "connection"
    t.string   "power_needed"
    t.integer  "supported_displays"
    t.string   "flops"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hdds", force: true do |t|
    t.integer  "price"
    t.string   "maker"
    t.string   "model"
    t.string   "size"
    t.string   "freq"
    t.string   "transfer_rate"
    t.string   "r_w_rate"
    t.string   "connection"
    t.string   "power_needed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "motherboards", force: true do |t|
    t.integer  "price"
    t.string   "maker"
    t.string   "model"
    t.string   "socket"
    t.string   "wireless"
    t.string   "chipset"
    t.string   "dram_type"
    t.string   "max_dram_speed_supported"
    t.string   "total_dram_allowed"
    t.string   "power_supply_pin_connector"
    t.string   "usb3_ports"
    t.string   "usb2_ports"
    t.string   "pci_ports"
    t.string   "pcie_ports"
    t.string   "power_needed"
    t.string   "dimensions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "channel_supported"
    t.integer  "pcie3x16_ports"
    t.integer  "pcie2x16_ports"
    t.integer  "mini_card_slots"
    t.integer  "sata_exp_ports"
    t.integer  "m2_ports"
    t.string   "lan_chipset"
    t.string   "second_lan_chipset"
    t.string   "max_lan_speed"
    t.integer  "ps2_ports"
    t.integer  "dvi_i_ports"
    t.integer  "hdmi_ports"
    t.integer  "display_ports"
    t.integer  "esata_ports"
    t.integer  "s_pdif_out_ports"
    t.integer  "audio_ports"
    t.string   "other_internal_ports"
  end

  create_table "powersupplies", force: true do |t|
    t.integer  "price"
    t.string   "maker"
    t.string   "model"
    t.string   "power"
    t.string   "rails"
    t.string   "connection"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ssds", force: true do |t|
    t.integer  "price"
    t.string   "maker"
    t.string   "model"
    t.string   "size"
    t.string   "freq"
    t.string   "transfer_rate"
    t.string   "r_w_rate"
    t.string   "connection"
    t.string   "power_needed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "towers", force: true do |t|
    t.integer  "price"
    t.string   "maker"
    t.string   "model"
    t.string   "dimensions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
