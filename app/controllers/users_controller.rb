class UsersController < ApplicationController

	post "/users/new" do
		user = User.new params[:user]
		if user.save
			redirect to("/success")
		else
			@error = user.errors.full_messages.to_sentence
			halt erb(:"users/new")
		end
	end

end