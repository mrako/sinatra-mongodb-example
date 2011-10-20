require File.dirname(__FILE__) + '/../spec_helper'

describe KeyValue do
  
  it "should create a new key-value pair" do
    KeyValue.new(:key => "test", :value => "val").should_not be_nil
  end
  
end