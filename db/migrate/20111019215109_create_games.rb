class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.integer :week
      t.string :home
      t.string :away
      t.float :handicap
      t.integer :home_result
      t.integer :away_result
      t.string :pick
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
