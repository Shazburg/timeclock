class RemoveCategories < ActiveRecord::Migration
  def self.up
    drop_table :categories
    remove_column :punches, :category_id
  end

  def self.down
  end
end
