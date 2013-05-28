class Zone::CompaniesController < InheritedResources::Base
  before_filter :authenticate_root!
  layout 'admin/application'

  def create
  	create! { zone_companies_path }
  end
end
