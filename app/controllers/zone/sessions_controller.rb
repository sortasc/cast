class Zone::SessionsController < ::Devise::SessionsController
  layout "admin/login"
  # the rest is inherited, so it should work
end