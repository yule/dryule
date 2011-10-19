class CreateBets < ActiveRecord::Migration
  def self.up
    create_table :bets do |t|
      t.string :notes
      t.boolean :is_correct
      t.integer :week

      t.timestamps
    end
  end

  def self.down
    drop_table :bets
  end
end
