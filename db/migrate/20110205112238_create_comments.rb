class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.text :comment
      t.integer :score
      t.references :user
      t.references :beverage
      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
