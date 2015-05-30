class CreateSsds < ActiveRecord::Migration
  def change
    create_table :ssds do |t|
      t.integer :price
      t.string :name
      t.string :model
      t.string :form_factor
      t.string :size
      t.string :connection

      t.timestamps null: false
    end
  end
end
