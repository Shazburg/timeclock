class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.string :last_name
      t.string :first_name
      t.boolean :enabled
    end
  end
  
  def self.down
    drop_table :employees
  end
end
