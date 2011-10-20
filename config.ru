path = File.expand_path "../", __FILE__

require "#{path}/init"

set :run, false
set :environment, :production

run Sinatra::Application
