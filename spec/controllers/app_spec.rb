require File.dirname(__FILE__) + '/../spec_helper'

require 'init'

describe "controller" do
  include Rack::Test::Methods

  def app
    @app ||= Sinatra::Application
  end

  it "should return the list of installed printers" do
    get "/"
    last_response.should be_ok
  end
end
