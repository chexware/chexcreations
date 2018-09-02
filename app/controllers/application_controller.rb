class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	include Pundit
	include PunditExtra
	
	protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
	def current_user
		@current_user ||= session[:user_id] if session[:user_id]
	end
	helper_method :current_user
	rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

	private

	def user_not_authorized
		flash[:alert] = "You are not authorized to perform this action."
		redirect_to 'access_denied'
	end
	
	
end
