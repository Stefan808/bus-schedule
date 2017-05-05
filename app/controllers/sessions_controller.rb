class SessionsController < ApplicationController

	enable :sessions

	get '/' do
		erb :index
	end

	get "/login" do
		erb :"sessions/login"
	end

end