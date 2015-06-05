class AddSelectToPowersupplies < ActiveRecord::Migration
  def change
    add_column :powersupplies, :select, :string
  end
end
