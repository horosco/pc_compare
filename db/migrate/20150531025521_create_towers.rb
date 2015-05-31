class CreateTowers < ActiveRecord::Migration
  def change
    create_table :towers do |t|
      t.integer :price
      t.string :maker
      t.string :model
      t.string :mb_compatibility
      t.string :front_ports

      t.timestamps null: false
    end
  end
end
