class CreateBeverages < ActiveRecord::Migration
  def self.up
    create_table :beverages do |t|
      t.string :name
      t.text :comment
      t.integer :score
      t.string :category
      t.timestamps
    end
  end

  def self.down
    drop_table :beverages
  end
end
