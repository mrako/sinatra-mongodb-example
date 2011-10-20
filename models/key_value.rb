require 'rubygems'
require 'mongo_mapper'

class KeyValue
  include MongoMapper::Document
  
  key :key, String, :required => true
  key :value, String, :required => true
end
