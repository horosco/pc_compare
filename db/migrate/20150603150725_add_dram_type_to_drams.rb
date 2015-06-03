class AddDramTypeToDrams < ActiveRecord::Migration
  def change
    add_column :drams, :dram_type, :string
  end
end
