class AddCreatedByToBeverages < ActiveRecord::Migration
  def self.up
    add_column(:beverages, :user_id, :integer)
  end

  def self.down
    remove_column(:beverages, :user_id)
  end
end
