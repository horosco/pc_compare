class AddNumberOfMemorySlotsToMotherboards < ActiveRecord::Migration
  def change
    add_column :motherboards, :number_of_memory_slots, :string
  end
end
