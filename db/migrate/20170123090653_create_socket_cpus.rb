class CreateSocketCpus < ActiveRecord::Migration[5.0]
  def change
    create_table :socket_cpus do |t|
      t.string :socket_name

      t.timestamps
    end
  end
end
