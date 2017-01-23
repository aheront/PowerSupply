class CreateWaterCoolings < ActiveRecord::Migration[5.0]
  def change
    create_table :water_coolings do |t|
      t.integer :water_power
      t.integer :pomp_count
      t.integer :fan_count
      t.timestamps
    end
  end
end
