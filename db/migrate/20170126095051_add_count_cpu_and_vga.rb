class AddCountCpuAndVga < ActiveRecord::Migration[5.0]
  def change
    add_column :cpus, :count_calc, :integer,:default => 0
    add_column :vgas, :count_calc, :integer,:default => 0
  end
end
