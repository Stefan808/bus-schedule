require 'bundler/setup'
Bundler.require(:default)

get '/' do
	"hello from sinata on heroku"
end