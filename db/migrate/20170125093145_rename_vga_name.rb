class RenameVgaName < ActiveRecord::Migration[5.0]
  def change
    rename_column :vgas, :vga_name, :name
  end
end
