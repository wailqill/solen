class CreateStatuses < ActiveRecord::Migration
  def self.up
    create_table :statuses do |t|
      t.date :date
      t.time :disappeared_at

      t.timestamps
    end
  end

  def self.down
    drop_table :statuses
  end
end
