#Use bundler to load gems
require 'bundler'

#Load gemms from Gemfile
Bundler.require

#Load models
Dir.glob("models/*.rb").map { |dir| require_relative dir}

#Load the app
require_relative 'imdb.rb'

#Make GET/PATCH/DELETE/POST work
use Rack::MethodOverride

#Run the application
run Imdb