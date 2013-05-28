module ZoneHelper

	# active sidebar models
	def models_sidebar section = 'none'
		render 'zone/sidebar', locals: { active: section }
	end

end
