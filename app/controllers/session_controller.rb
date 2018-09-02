class SessionController < ApplicationController
	
    def sign_in

	end
	def authenticate
	    user = User.find_by_name(params[:name])
		if params[:name] == 'admin' && params[:password] == 'pass'
			# Save the user id inside the browser cookie. This is how we keep the user 
			# logged in when they navigate around our website.
			session[:user_id] = 1
			@login = true
			render '/home/index'
		else
			# If user's login doesn't work, send them back to the login form.
			@error = true
			render '/session/sign_in'
		end
	end
	
	def sign_out
	    if session[:user_id] == 1
			session[:user_id] = nil
			@logout = true
			render '/home/index'
		
		else
			redirect_to 'access_denied'
		end
	end
	
	def access_denied
	end
end
