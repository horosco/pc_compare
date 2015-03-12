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

ActiveRecord::Schema.define(version: 20150312032111) do

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
  end

end
