class CreateAuthorComments < ActiveRecord::Migration
  def self.up
    create_table :author_comments do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :author_comments
  end
end
