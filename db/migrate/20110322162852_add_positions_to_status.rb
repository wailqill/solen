class AddPositionsToStatus < ActiveRecord::Migration
  def self.up
    add_column :statuses, :position1, :datetime
    add_column :statuses, :position2, :datetime
    add_column :statuses, :position3, :datetime
  end

  def self.down
    remove_column :statuses, :position3
    remove_column :statuses, :position2
    remove_column :statuses, :position1
  end
end
