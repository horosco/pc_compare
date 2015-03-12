class CreateMotherboards < ActiveRecord::Migration
  def change
    create_table :motherboards do |t|
      t.integer :price
      t.string :maker
      t.string :model
      t.string :socket
      t.string :wireless
      t.string :chipset
      t.string :dram_type
      t.string :max_dram_speed_supported
      t.string :total_dram_allowed
      t.string :power_supply_pin_connector
      t.string :usb3_ports
      t.string :usb2_ports
      t.string :pci_ports
      t.string :pcie_ports
      t.string :power_needed
      t.string :dimensions

      t.timestamps
    end
  end
end
