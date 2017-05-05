class NewClass < Sinatra::Base
	
	set :views, Proc.new{ File.join(root, '../views/') }

	get '/' do
		@error = "so?"
		erb :index
	end

end