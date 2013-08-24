class CreateComments < ActiveRecord::Migration
  def change
    create_table :author_comments do |t|
      t.text :body
      t.references :post

      t.timestamps
    end
  end
end
