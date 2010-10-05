class CreateTimeZones < ActiveRecord::Migration
  def self.up
    create_table :time_zones do |t|
      t.string :time_zone
      t.timestamps
    end
  end
  
  def self.down
    drop_table :time_zones
  end
end
