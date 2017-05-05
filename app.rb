require 'bundler/setup'
Bundler.require(:default)


class NewClass < Sinatra::Base
	
	get '/' do
		"hello from sinata on heroku"
	end

end