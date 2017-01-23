class CreateRams < ActiveRecord::Migration[5.0]
  def change
    create_table :rams do |t|
      t.references :brand, foreign_key: true
      t.integer :power_ram

      t.timestamps
    end
  end
end
