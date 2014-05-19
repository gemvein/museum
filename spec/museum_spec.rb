require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Museum" do
  it 'should return correct version string' do
    Museum.version_string.should == "Museum version #{Museum::VERSION}"
  end
end
