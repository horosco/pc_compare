class CreateCpus < ActiveRecord::Migration
  def change
    create_table :cpus do |t|
      t.string :name
      t.string :model
      t.string :socket
      t.integer :cores
      t.integer :threads
      t.string :operating_frequency
      t.string :max_frequency
      t.string :l2_cache
      t.string :l3_cache
      t.string :tech_node
      t.string :supports_64bits
      t.string :supports_hyper_threading
      t.string :supports_virtualization
      t.string :integrated_graphics
      t.string :graphics_base_frequency
      t.string :graphics_max_frequency
      t.string :pcie_rev
      t.integer :max_pcie_lanes
      t.string :cooling_device

      t.timestamps null: false
    end
  end
end
