class AddPriceToCpus < ActiveRecord::Migration
  def change
    add_column :cpus, :price, :integer
  end
end
