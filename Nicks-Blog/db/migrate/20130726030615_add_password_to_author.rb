class AddPasswordToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :encrypted_password, :string
    add_column :authors, :remember_me, :date
  end
end
