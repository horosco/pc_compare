class AddSelectToGpus < ActiveRecord::Migration
  def change
    add_column :gpus, :select, :string
  end
end
