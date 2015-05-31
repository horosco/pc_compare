class CreatePowersupplies < ActiveRecord::Migration
  def change
    create_table :powersupplies do |t|
      t.integer :price
      t.string :maker
      t.string :model
      t.string :ps_type
      t.string :max_power
      t.string :connector
      t.string :rails_12v
      t.string :intel_support
      t.string :sli_support
      t.string :output_ratings
      t.string :dimensions
      t.string :notes

      t.timestamps null: false
    end
  end
end
