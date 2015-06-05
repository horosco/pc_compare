class AddPciex1PortsToMotherboards < ActiveRecord::Migration
  def change
    add_column :motherboards, :pciex1_ports, :integer
  end
end
