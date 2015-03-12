json.array!(@motherboards) do |motherboard|
  json.extract! motherboard, :price, :maker, :model, :socket, :wireless, :chipset, :dram_type, :max_dram_speed_supported, :total_dram_allowed, :power_supply_pin_connector, :usb3_ports, :usb2_ports, :pci_ports, :pcie_ports, :power_needed, :dimensions
  json.url motherboard_url(motherboard, format: :json)
end