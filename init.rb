require 'rubygems'
require 'sinatra'
require 'yaml'
require 'mongo_mapper'

configure do
  root = File.expand_path(File.dirname(__FILE__))
end

not_found do
  status 404
end



# Else read the local configuration
@config = YAML.load_file("config/database.yml")
  
@environment = @config["environment"]

@db_host = @config[@environment]["host"]
@db_port = @config[@environment]["port"]
@db_name = @config[@environment]["database"]


# Configure the environment

MongoMapper.connection = Mongo::Connection.new(@db_host, @db_port)
MongoMapper.database = @db_name

MongoMapper.connection.connect


Dir["models/*.rb"].each{ |file| require file }

Dir["controllers/*.rb"].each{ |file| load file }

