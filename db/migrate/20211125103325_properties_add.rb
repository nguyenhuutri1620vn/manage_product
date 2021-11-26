class PropertiesAdd < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :title
      t.integer :quantity
      t.integer :product_id

      t.timestamps
    end
  end
end
