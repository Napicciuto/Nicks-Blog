class AddRememberToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :remember_created_at, :datetime
  end
end
