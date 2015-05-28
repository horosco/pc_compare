class AddColumnsToMotherboards < ActiveRecord::Migration
  def change
    add_column :motherboards, :number_of_memory_slots, :string
    add_column :motherboards, :channel_supported, :string
    add_column :motherboards, :pcie3x16_ports, :integer
    add_column :motherboards, :pcie2x16_ports, :integer
    add_column :motherboards, :mini_card_slots, :integer
    add_column :motherboards, :sata_exp_ports, :integer
    add_column :motherboards, :m2_ports, :integer
    add_column :motherboards, :lan_chipset, :string
    add_column :motherboards, :second_lan_chipset, :string
    add_column :motherboards, :max_lan_speed, :string
    add_column :motherboards, :ps2_ports, :integer
    add_column :motherboards, :dvi_i_ports, :integer
    add_column :motherboards, :hdmi_ports, :integer
    add_column :motherboards, :display_ports, :integer
    add_column :motherboards, :esata_ports, :integer
    add_column :motherboards, :s_pdif_out_ports, :integer
    add_column :motherboards, :audio_ports, :integer
    add_column :motherboards, :other_internal_ports, :string
  end
end
