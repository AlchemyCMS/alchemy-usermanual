require 'simplecov'
require 'coveralls'

ENV["RAILS_ENV"] = "test"

if ENV['CI']
  SimpleCov.formatter = Coveralls::SimpleCov::Formatter
else
  SimpleCov.formatter = SimpleCov::Formatter::HTMLFormatter
end
SimpleCov.start 'rails'

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rails/test_help"
require "rspec/rails"

Rails.logger.level = 4

RSpec.configure do |config|
  config.use_transactional_fixtures = true
end
