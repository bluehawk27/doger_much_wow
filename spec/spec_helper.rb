require 'rubygems'

# All our specs should require 'spec_helper' (this file)

# If RACK_ENV isn't set, set it to 'test'.  Sinatra defaults to development,
# so we have to override that unless we want to set RACK_ENV=test from the
# command line when we run rake spec.  That's tedious, so do it here.
ENV['RACK_ENV'] ||= 'test'

require File.expand_path("../../config/environment", __FILE__)
# Unit
# Shoulda is used for validations and other model level tests.
require 'shoulda-matchers'
# Rack Test is used to test controllers in the request response cycle
require 'rack/test'
# Integration
# Used integration tests which walk through the code at the view level and
# ensure things work for the user
require 'capybara'
require 'capybara/rspec'

RSpec.configure do |config|
  config.include Rack::Test::Methods
end

def app
  Sinatra::Application
end
