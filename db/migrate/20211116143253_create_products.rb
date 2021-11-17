class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :sku
      t.string :title
      t.string :price
      t.string :quantity

      t.timestamps
    end
  end
end
