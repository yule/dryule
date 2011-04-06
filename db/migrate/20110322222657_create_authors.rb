class CreateAuthors < ActiveRecord::Migration
  def self.up
	create_table :author_comments do |t|
		t.string :author_name
		t.string :comment
		t.integer :brand
	end
  end

  def self.down
  end
end
