require 'rails_helper'

describe "Museum" do
  it 'should return correct version string' do
    Museum.version_string.should == "Museum version #{Museum::VERSION}"
  end
end
