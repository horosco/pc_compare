class AddSelectToDrams < ActiveRecord::Migration
  def change
    add_column :drams, :select, :string
  end
end
