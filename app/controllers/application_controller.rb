class ApplicationController < Sinatra::Base

	register Sinatra::Can

	set :views, Proc.new{ File.join(root, '../views/') }

	helpers do

		def current_user
			@current_user ||= User.find_by(id: session[:user_id])
		end

		def logged_in?
			current_user != nil
		end

	end

end