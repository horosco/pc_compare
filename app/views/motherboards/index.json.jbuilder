json.array!(@motherboards) do |motherboard|
  json.extract! motherboard, :select, :price, :maker, :model, :socket, :wireless, :chipset, :dram_type, :max_dram_speed_supported, :total_dram_allowed, :power_supply_pin_connector, :usb3_ports, :usb2_ports, :pci_ports, :pcie_ports, :power_needed, :dimensions, :number_of_memory_slots, :channel_supported, :pcie3x16_ports, :pcie2x16_ports, :mini_card_slots, :sata_exp_ports, :m2_ports, :lan_chipset, :second_lan_chipset, :max_lan_speed, :ps2_ports, :dvi_i_ports, :hdmi_ports, :display_ports, :esata_ports, :s_pdif_out_ports, :audio_ports, :other_internal_ports 
  json.url motherboard_url(motherboard, format: :json)
end
