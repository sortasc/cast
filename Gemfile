source 'https://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.2.13'
gem 'mongoid', '~> 3.0.0'
gem 'devise'
gem 'turbolinks'
gem 'strong_parameters'
gem 'inherited_resources'
gem 'redis'
# gem 'redis-rails'
# gem 'sidekiq'
# gem 'newrelic_rpm'
gem 'jquery-rails'
# gem 'unicorn'
gem 'rack-cors', require: 'rack/cors'
# Gems used only for assets and not required
# in production environments by default.
gem 'public_activity'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'uglifier', '>= 1.0.3'
end

group :development do 
  gem 'mailcatcher'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
end

group :test do
  gem 'database_cleaner'
end

group :test, :development do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'thin'
  gem 'pry'
end

gem 'coveralls', require: false
