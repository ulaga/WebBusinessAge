class CreateSavedblogs < ActiveRecord::Migration
  def self.up
    create_table :savedblogs do |t|
	t.integer :user_id
	t.integer :blog_id

      t.timestamps
    end
  end

  def self.down
    drop_table :savedblogs
  end
end
