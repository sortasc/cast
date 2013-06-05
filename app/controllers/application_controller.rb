class ApplicationController < ActionController::Base
  protect_from_forgery
  around_filter :scope_current_tenant
  before_filter :set_locale
	layout :layout_devise

	def set_locale
	  I18n.locale = params[:locale] || I18n.default_locale
	end

	protected

	def layout_devise
  	devise_controller? ? 'login' : 'application'
	end

	private

  def current_tenant
    Company.find_by subdomain: request.subdomain unless request.subdomain.blank?
  end
  helper_method :current_tenant

  def scope_current_tenant
    Company.current_id = current_tenant.id if current_tenant
    yield
  ensure
    Company.current_id = nil
  end
  
end
