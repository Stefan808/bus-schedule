class SessionsController < ApplicationController

	enable :sessions

	get '/' do
		erb :'buses_journeys/index'
	end

	get "/singup" do
		erb :"users/new"
	end

	get "/success" do
		erb :success
	end

  post "/login" do
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect to('/success')
    else
      @error = "You have problem with username or password"
      halt erb(:'buses_journeys/index')
    end
  end

  get "/logout" do
    session.clear
    redirect to("/")
  end

end