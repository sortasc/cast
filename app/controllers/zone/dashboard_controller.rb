class Zone::DashboardController < ApplicationController
  before_filter :authenticate_root!
  
  layout 'admin/application'
  
  def index
  end

  def models
  end

end
