require 'coveralls'
Coveralls.wear!

ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'pry'
require 'factory_girl_rails'
require 'database_cleaner'

Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
  config.color_enabled = true
  config.tty = true
  # config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
  config.order = 'random'

  config.before(:suite) do
    DatabaseCleaner.clean
  end
   
  config.before(:each) do
    DatabaseCleaner[:mongo_mapper].strategy = :truncation
  end

end
