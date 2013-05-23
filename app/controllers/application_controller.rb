class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale
	layout :layout_devise

	def set_locale
	  I18n.locale = params[:locale] || I18n.default_locale
	end

	protected

	def layout_devise
  	devise_controller? ? 'login' : 'application'
	end

end
