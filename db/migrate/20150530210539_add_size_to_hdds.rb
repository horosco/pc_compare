class AddSizeToHdds < ActiveRecord::Migration
  def change
    add_column :hdds, :size, :string
  end
end
