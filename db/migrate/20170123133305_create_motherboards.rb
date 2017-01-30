class CreateMotherboards < ActiveRecord::Migration[5.0]
  def change
    create_table :motherboards do |t|
      t.integer :power
      t.string :type

      t.timestamps
    end
  end
end
