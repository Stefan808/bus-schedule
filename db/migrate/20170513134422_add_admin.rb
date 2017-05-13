class AddAdmin < ActiveRecord::Migration[5.1]
  def self.up
  	User.new({
  	  email: 'admin@admin.com',
  	  username: 'admin',
  	  password: 'secret',
  	  role: 'admin'
  	}).save
  end

  def self.down
  	User.find_by({
  	  email: 'admin@admin.com',
  	  username: 'admin'
  	}).destroy
  end

end
