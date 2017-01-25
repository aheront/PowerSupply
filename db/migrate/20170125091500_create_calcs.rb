class CreateCalcs < ActiveRecord::Migration[5.0]
  def change
    create_table :calcs do |t|
      t.belongs_to :cpu
      t.belongs_to :vga
      t.belongs_to :ram
      t.belongs_to :water_cooling
      t.belongs_to :motherboard
      t.integer :ram_count
      t.integer :fan_count
      t.integer :vga_count
      t.integer :sata_count
      t.integer :calc
      t.timestamps
    end
  end
end
