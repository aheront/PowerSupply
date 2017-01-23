class CreateCpus < ActiveRecord::Migration[5.0]
  def change
    create_table :cpus do |t|
      t.references :brand, foreign_key: true
      t.references :company, foreign_key: true
      t.string :name
      t.integer :power
      t.references :socket_cpu, foreign_key: true

      t.timestamps
    end
  end
end
