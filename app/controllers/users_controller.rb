class UsersController < ApplicationController

	post "/users/new" do
		# user = User.new params[:user]
		user = User.create params[:user]
		if user.valid?
			redirect to("/success")
		else
			@error = user.errors.full_messages.to_sentence
			halt erb(:'users/new')
		end
	end

	get "/users/:id" do
		@user = current_user
    	authorize! :read, @user
		erb :'users/view'
	end

end