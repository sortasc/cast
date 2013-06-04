module Tenant
  extend ActiveSupport::Concern

 	included do
    default_scope where(company_id: Company.current_id)
  end
  
end