class Zone::RootsController < InheritedResources::Base
  before_filter :authenticate_root!
  layout 'admin/application'
end
