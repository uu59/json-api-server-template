ENV["RACK_ENV"] = "test"
require_relative "../app.rb"

require "rack/test"

Dir["./spec/support/**/*.rb"].each{|file| require file }

if ENV["COVERAGE"]
  require "simplecov"
  SimpleCov.start
end

RSpec.configure do |config|
end
