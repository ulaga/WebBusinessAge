class CreateListings < ActiveRecord::Migration
  def self.up
    create_table :listings do |t|
	t.string :title
	t.string :shortdescription
	t.text :description
	t.string :activatedform
	t.string :listingtypes
	t.string :georelevance
	t.string :userlevel
	t.string :sponsored_item1
	t.string :sponsored_item2
	t.string :category
	t.string :content_type
	t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :listings
  end
end
