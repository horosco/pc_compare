class AddSelectToTowers < ActiveRecord::Migration
  def change
    add_column :towers, :select, :string
  end
end
