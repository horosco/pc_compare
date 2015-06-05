class AddSelectToSsds < ActiveRecord::Migration
  def change
    add_column :ssds, :select, :string
  end
end
