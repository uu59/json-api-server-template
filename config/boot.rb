require "yaml"
require "bundler"
Bundler.require(:default, ENV["RACK_ENV"] || :development)

Dir["./models/**/*.rb"].each do |f|
  require f
end

module App
  def self.root
    Pathname.new(__FILE__) / "../../"
  end
end

ActiveRecord::Base.establish_connection(YAML.load(IO.read App.root.join("config/database.yml")))

