class ApplicationController < ActionController::Base
	def after_sign_in_path_for(resource)
    dash_poards_users_path
  end
end
