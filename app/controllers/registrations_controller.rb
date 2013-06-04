class RegistrationsController < Devise::RegistrationsController

	def create
		super
		resource.update_attribute :company_id, current_tenant.id
	end

end