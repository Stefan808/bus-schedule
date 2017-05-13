class AddRoleToUsers < ActiveRecord::Migration[5.1]
  def self.up
  	add_column :users, :role, :string
  end

  def self.down
  	remove_column :users, :role, :string
  end
end
