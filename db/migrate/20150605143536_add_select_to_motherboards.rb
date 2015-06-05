class AddSelectToMotherboards < ActiveRecord::Migration
  def change
    add_column :motherboards, :select, :string
  end
end
