require 'spec_helper'

describe "motherboards/show" do
  before(:each) do
    @motherboard = assign(:motherboard, stub_model(Motherboard,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Maker/)
    rendered.should match(/Model/)
    rendered.should match(/Socket/)
    rendered.should match(/Wireless/)
    rendered.should match(/Chipset/)
    rendered.should match(/Dram Type/)
    rendered.should match(/Max Dram Speed Supported/)
    rendered.should match(/Total Dram Allowed/)
    rendered.should match(/Power Supply Pin Connector/)
    rendered.should match(/Usb3 Ports/)
    rendered.should match(/Usb2 Ports/)
    rendered.should match(/Pci Ports/)
    rendered.should match(/Pcie Ports/)
    rendered.should match(/Power Needed/)
    rendered.should match(/Dimensions/)
  end
end
