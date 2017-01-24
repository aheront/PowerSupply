class RemoveTypeAddNameToMotherboard < ActiveRecord::Migration[5.0]
  def change
    add_column :motherboards, :name, :string
    remove_column :motherboards, :type
  end
end
