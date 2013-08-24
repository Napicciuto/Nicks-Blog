class AddfieldToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :favorite, :boolean, default: false
  end
end
