module ProfileHelper

	# Gravatar Image Profile
	def avatar email
		image_tag "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}", class: 'avatar'
	end

end