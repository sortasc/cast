class Zone::DashboardController < ApplicationController
  before_filter :authenticate_root!
  
  layout 'admin'
  
  def index
  end
  
end
