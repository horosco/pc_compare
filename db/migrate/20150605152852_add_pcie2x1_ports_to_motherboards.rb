class AddPcie2x1PortsToMotherboards < ActiveRecord::Migration
  def change
    add_column :motherboards, :pcie2x1_ports, :integer
  end
end
