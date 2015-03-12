require 'spec_helper'

describe "motherboards/index" do
  before(:each) do
    assign(:motherboards, [
      stub_model(Motherboard,
        :price => 1,
        :maker => "Maker",
        :model => "Model",
        :socket => "Socket",
        :wireless => "Wireless",
        :chipset => "Chipset",
        :dram_type => "Dram Type",
        :max_dram_speed_supported => "Max Dram Speed Supported",
        :total_dram_allowed => "Total Dram Allowed",
        :power_supply_pin_connector => "Power Supply Pin Connector",
        :usb3_ports => "Usb3 Ports",
        :usb2_ports => "Usb2 Ports",
        :pci_ports => "Pci Ports",
        :pcie_ports => "Pcie Ports",
        :power_needed => "Power Needed",
        :dimensions => "Dimensions"
      ),
      stub_model(Motherboard,
        :price => 1,
        :maker => "Maker",
        :model => "Model",
        :socket => "Socket",
        :wireless => "Wireless",
        :chipset => "Chipset",
        :dram_type => "Dram Type",
        :max_dram_speed_supported => "Max Dram Speed Supported",
        :total_dram_allowed => "Total Dram Allowed",
        :power_supply_pin_connector => "Power Supply Pin Connector",
        :usb3_ports => "Usb3 Ports",
        :usb2_ports => "Usb2 Ports",
        :pci_ports => "Pci Ports",
        :pcie_ports => "Pcie Ports",
        :power_needed => "Power Needed",
        :dimensions => "Dimensions"
      )
    ])
  end

  it "renders a list of motherboards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Maker".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Socket".to_s, :count => 2
    assert_select "tr>td", :text => "Wireless".to_s, :count => 2
    assert_select "tr>td", :text => "Chipset".to_s, :count => 2
    assert_select "tr>td", :text => "Dram Type".to_s, :count => 2
    assert_select "tr>td", :text => "Max Dram Speed Supported".to_s, :count => 2
    assert_select "tr>td", :text => "Total Dram Allowed".to_s, :count => 2
    assert_select "tr>td", :text => "Power Supply Pin Connector".to_s, :count => 2
    assert_select "tr>td", :text => "Usb3 Ports".to_s, :count => 2
    assert_select "tr>td", :text => "Usb2 Ports".to_s, :count => 2
    assert_select "tr>td", :text => "Pci Ports".to_s, :count => 2
    assert_select "tr>td", :text => "Pcie Ports".to_s, :count => 2
    assert_select "tr>td", :text => "Power Needed".to_s, :count => 2
    assert_select "tr>td", :text => "Dimensions".to_s, :count => 2
  end
end
