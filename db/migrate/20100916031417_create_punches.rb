class CreatePunches < ActiveRecord::Migration
  def self.up
    create_table :punches do |t|
      t.integer :employee_id
      t.integer :in
      t.integer :category_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :punches
  end
end
