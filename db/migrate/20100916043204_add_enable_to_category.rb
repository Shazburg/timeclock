class AddEnableToCategory < ActiveRecord::Migration
  def self.up
    add_column :categories, :enable, :boolean
  end

  def self.down
    remove_column :categories, :enable
  end
end
