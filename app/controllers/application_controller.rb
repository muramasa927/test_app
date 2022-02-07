class ApplicationController < ActionController::Base
	def after_sign_in_path_for(resource)
    dash_boards_users_path(resource)
  end
end
