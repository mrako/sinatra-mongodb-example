require "rubygems"
require "haml"

get '/' do
  @values = KeyValue.all

  haml :home, :layout => :layout
end

post '/' do
  KeyValue.create!(params)
  
  redirect '/'
end