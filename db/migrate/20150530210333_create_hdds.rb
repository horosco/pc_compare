class CreateHdds < ActiveRecord::Migration
  def change
    create_table :hdds do |t|
      t.integer :price
      t.string :maker
      t.string :series
      t.string :model
      t.string :interface
      t.string :notes

      t.timestamps null: false
    end
  end
end
