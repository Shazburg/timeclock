class CreatePunches < ActiveRecord::Migration
  def self.up
    create_table :punches do |t|
      t.integer :employee_id
      t.boolean :shift_in
      t.boolean :break_in
      t.boolean :break_out
      t.boolean :shift_out

      t.timestamps
    end
  end

  def self.down
    drop_table :punches
  end
end
