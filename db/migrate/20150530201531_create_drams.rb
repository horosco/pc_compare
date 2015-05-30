class CreateDrams < ActiveRecord::Migration
  def change
    create_table :drams do |t|
      t.integer :price
      t.string :maker
      t.string :series
      t.string :model
      t.string :size
      t.string :type
      t.string :speed
      t.integer :cas_latency
      t.string :timing
      t.string :voltage
      t.string :ecc_support
      t.string :notes

      t.timestamps null: false
    end
  end
end
