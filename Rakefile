require 'rubygems'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/**/*_spec.rb'
end

RSpec::Core::RakeTask.new(:rcov) do |t|
  t.rcov = true
  t.rcov_opts =  %q[--include "app" --exclude "spec"]
end

namespace :war do
  task :compile do
    sh "cd java; ant"
  end
  
  task :bundle do
    sh "warble"
  end
  
  task :rename_and_copy do
    sh "mv sinatra-jruby-warbler.war jetty/webapps/ROOT.war"
  end
  
  task :start do
    sh "cd jetty; java -Djetty.port=8000 -jar start.jar"
  end
  
  task :deploy => [:compile, :bundle, :rename_and_copy, :start]
end
