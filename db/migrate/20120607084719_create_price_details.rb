class CreatePriceDetails < ActiveRecord::Migration
  def self.up
    create_table :price_details do |t|
	t.string :category
	t.integer :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :price_details
  end
end
