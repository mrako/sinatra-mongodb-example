require 'rubygems'
require 'sinatra'
require 'rack/test'

set :environment, :test
set :views, File.dirname(__FILE__) + "/../views"


Dir["app/models/*.rb"].each{ |file| require file }
