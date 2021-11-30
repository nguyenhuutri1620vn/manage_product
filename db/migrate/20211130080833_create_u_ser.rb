class CreateUSer < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.datetime :date_born
      t.string :phone

      t.timestamps
    end
  end
end
