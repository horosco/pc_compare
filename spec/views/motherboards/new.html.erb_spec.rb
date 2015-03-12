require 'spec_helper'

describe "motherboards/new" do
  before(:each) do
    assign(:motherboard, stub_model(Motherboard,
      :price => 1,
      :maker => "MyString",
      :model => "MyString",
      :socket => "MyString",
      :wireless => "MyString",
      :chipset => "MyString",
      :dram_type => "MyString",
      :max_dram_speed_supported => "MyString",
      :total_dram_allowed => "MyString",
      :power_supply_pin_connector => "MyString",
      :usb3_ports => "MyString",
      :usb2_ports => "MyString",
      :pci_ports => "MyString",
      :pcie_ports => "MyString",
      :power_needed => "MyString",
      :dimensions => "MyString"
    ).as_new_record)
  end

  it "renders new motherboard form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", motherboards_path, "post" do
      assert_select "input#motherboard_price[name=?]", "motherboard[price]"
      assert_select "input#motherboard_maker[name=?]", "motherboard[maker]"
      assert_select "input#motherboard_model[name=?]", "motherboard[model]"
      assert_select "input#motherboard_socket[name=?]", "motherboard[socket]"
      assert_select "input#motherboard_wireless[name=?]", "motherboard[wireless]"
      assert_select "input#motherboard_chipset[name=?]", "motherboard[chipset]"
      assert_select "input#motherboard_dram_type[name=?]", "motherboard[dram_type]"
      assert_select "input#motherboard_max_dram_speed_supported[name=?]", "motherboard[max_dram_speed_supported]"
      assert_select "input#motherboard_total_dram_allowed[name=?]", "motherboard[total_dram_allowed]"
      assert_select "input#motherboard_power_supply_pin_connector[name=?]", "motherboard[power_supply_pin_connector]"
      assert_select "input#motherboard_usb3_ports[name=?]", "motherboard[usb3_ports]"
      assert_select "input#motherboard_usb2_ports[name=?]", "motherboard[usb2_ports]"
      assert_select "input#motherboard_pci_ports[name=?]", "motherboard[pci_ports]"
      assert_select "input#motherboard_pcie_ports[name=?]", "motherboard[pcie_ports]"
      assert_select "input#motherboard_power_needed[name=?]", "motherboard[power_needed]"
      assert_select "input#motherboard_dimensions[name=?]", "motherboard[dimensions]"
    end
  end
end
