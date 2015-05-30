class RemoveTypeFromDrams < ActiveRecord::Migration
  def change
    remove_column :drams, :type, :string
  end
end
