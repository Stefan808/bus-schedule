class CreateUsers < ActiveRecord::Migration[5.1]
  def self.up
  	create_table :users do |t|
  		t.string :email, null: false
  		t.string :username, null: false
  		t.string :password_digest, null: false

  		t.timestamps
  	end
  end

  def self.down
  	drop_table :users
  end
end
