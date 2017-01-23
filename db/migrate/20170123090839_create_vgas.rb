class CreateVgas < ActiveRecord::Migration[5.0]
  def change
    create_table :vgas do |t|
      t.string :vga_name
      t.references :company, foreign_key: true
      t.integer :vga_power
      t.timestamps
    end
  end
end
