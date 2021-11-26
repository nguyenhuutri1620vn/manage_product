class PropertiesCreate < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :title
      t.integer :quantity
    end
  end
end
