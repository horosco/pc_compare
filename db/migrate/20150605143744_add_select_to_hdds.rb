class AddSelectToHdds < ActiveRecord::Migration
  def change
    add_column :hdds, :select, :string
  end
end
