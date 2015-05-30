class CreateGpus < ActiveRecord::Migration
  def change
    create_table :gpus do |t|
      t.integer :price
      t.string :name
      t.string :maker
      t.string :model
      t.string :interface
      t.string :gpu_ver
      t.string :core_clock
      t.string :boost_clock
      t.integer :cuda_cores
      t.string :mem_clock
      t.string :memory_size
      t.string :mem_interface
      t.string :mem_type
      t.string :directx_support
      t.string :opengl_support
      t.integer :hdmi_ports
      t.integer :dvi_i_ports
      t.integer :dvi_d_ports
      t.string :max_resolution
      t.string :sli_support
      t.string :cooler
      t.string :system_reqs

      t.timestamps null: false
    end
  end
end
