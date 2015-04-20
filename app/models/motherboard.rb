class Motherboard < ActiveRecord::Base
  attr_accessor :number_of_memory_slots
  attr_accessor :channel_supported
  attr_accessor :pcie3x16_ports
  attr_accessor :pcie2x16_ports
  attr_accessor :mini_card_slots
  attr_accessor :sata_exp_ports
  attr_accessor :m2_ports
  attr_accessor :lan_chipset
  attr_accessor :second_lan_chipset
  attr_accessor :max_lan_speed
  attr_accessor :ps2_ports
  attr_accessor :dvi_i_ports
  attr_accessor :hdmi_ports
  attr_accessor :display_ports
  attr_accessor :esata_ports
  attr_accessor :s_pdif_out_ports
  attr_accessor :other_internal_ports
end
