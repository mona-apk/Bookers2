class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	before_action :configure_permitted_parameters, if: :devise_controller?

	#sign in後のリダイレクト
	def after_sign_in_path_for(resource)
		#TODO: パスの変更
		new_book_path
	end

	#sign out後のリダイレクト
	def after_sign_out_path_for(resource)
		#TODO: パスの変更
		new_book_path
	end

	protected

	def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
