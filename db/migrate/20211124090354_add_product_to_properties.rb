class AddProductToProperties < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :productID, :integer
  end
end
