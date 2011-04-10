class AddBirthToStatus < ActiveRecord::Migration
  def self.up
    add_column :statuses, :birth, :datetime
  end

  def self.down
    remove_column :statuses, :birth
  end
end
