class ProjectsController < InheritedResources::Base
	before_filter :authenticate_user!
	respond_to :json
end
