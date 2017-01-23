class AddToVgaBrand < ActiveRecord::Migration[5.0]
  def change
    add_column :vgas, :brand_id, :integer
  end
end
