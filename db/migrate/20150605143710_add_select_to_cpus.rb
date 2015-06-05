class AddSelectToCpus < ActiveRecord::Migration
  def change
    add_column :cpus, :select, :string
  end
end
