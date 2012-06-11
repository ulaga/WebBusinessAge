class CreateContactus < ActiveRecord::Migration
  def self.up
    create_table :contactus do |t|
	t.string :first_name
	t.string :last_name
	t.string :email
	t.string :purpose
	t.string :subject
	t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :contactus
  end
end
