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

ActiveRecord::Schema.define(version: 20150531021009) do

  create_table "cpus", force: :cascade do |t|
    t.string   "name"
    t.string   "model"
    t.string   "socket"
    t.integer  "cores"
    t.integer  "threads"
    t.string   "operating_frequency"
    t.string   "max_frequency"
    t.string   "l2_cache"
    t.string   "l3_cache"
    t.string   "tech_node"
    t.string   "supports_64bits"
    t.string   "supports_hyper_threading"
    t.string   "supports_virtualization"
    t.string   "integrated_graphics"
    t.string   "graphics_base_frequency"
    t.string   "graphics_max_frequency"
    t.string   "pcie_rev"
    t.integer  "max_pcie_lanes"
    t.string   "cooling_device"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "price"
  end

  create_table "drams", force: :cascade do |t|
    t.integer  "price"
    t.string   "maker"
    t.string   "series"
    t.string   "model"
    t.string   "size"
    t.string   "speed"
    t.integer  "cas_latency"
    t.string   "timing"
    t.string   "voltage"
    t.string   "ecc_support"
    t.string   "notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "gpus", force: :cascade do |t|
    t.integer  "price"
    t.string   "name"
    t.string   "maker"
    t.string   "model"
    t.string   "interface"
    t.string   "gpu_ver"
    t.string   "core_clock"
    t.string   "boost_clock"
    t.integer  "cuda_cores"
    t.string   "mem_clock"
    t.string   "memory_size"
    t.string   "mem_interface"
    t.string   "mem_type"
    t.string   "directx_support"
    t.string   "opengl_support"
    t.integer  "hdmi_ports"
    t.integer  "dvi_i_ports"
    t.integer  "dvi_d_ports"
    t.string   "max_resolution"
    t.string   "sli_support"
    t.string   "cooler"
    t.string   "system_reqs"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "hdds", force: :cascade do |t|
    t.integer  "price"
    t.string   "maker"
    t.string   "series"
    t.string   "model"
    t.string   "interface"
    t.string   "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "size"
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
    t.string   "maker"
    t.string   "model"
    t.string   "ps_type"
    t.string   "max_power"
    t.string   "connector"
    t.string   "rails_12v"
    t.string   "intel_support"
    t.string   "sli_support"
    t.string   "output_ratings"
    t.string   "dimensions"
    t.string   "notes"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "ssds", force: :cascade do |t|
    t.integer  "price"
    t.string   "name"
    t.string   "model"
    t.string   "form_factor"
    t.string   "size"
    t.string   "connection"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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
