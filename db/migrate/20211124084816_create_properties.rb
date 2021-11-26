class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    create_table :properties do |t|
      t.string :title
      t.integer :quantity

      t.timestamps
    end
  end
end
