class NewClass < Sinatra::Base
	
	set :views, Proc.new{ File.join(root, '../views/') }

	get '/' do
		erb :index
	end

end