ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "minitest/autorun"


class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  # fixtures :all
  include Devise::TestHelpers
  include Rails.application.routes.url_helpers
  include ActionController::TestCase::Behavior
  include ActiveSupport::Testing::SetupAndTeardown
  include ActiveSupport::Testing::Assertions
  # Add more helper methods to be used by all tests here...
end

Turn.config.format = :outline

