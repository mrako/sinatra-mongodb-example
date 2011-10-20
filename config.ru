require 'init'

set :run, false
set :environment, :production

run Sinatra::Application
