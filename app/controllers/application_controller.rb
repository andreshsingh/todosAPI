class ApplicationController < ActionController::Base
	protect_from_forgery with: :null_session
	include Knock::Authenticable
	undef_method :current_user
end
