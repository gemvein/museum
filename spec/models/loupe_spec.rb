require 'spec_helper'

describe Museum::Loupe do
  include_context 'loupe support'
  include_context 'case support'

  it { should respond_to(:friendly_id) }
  it { should validate_presence_of(:title) }

  describe '#id_by_slug' do
    subject { Museum::Loupe.id_by_slug('rubygems') }
    it { should be_an Integer}
  end

  describe '#magnify' do
    subject { rubygems.magnify(dummy_package) }
    it { should be_a Hash }
  end

  describe '#url' do
    subject { rubygems.url(dummy_package) }
    it { should be_a String }
  end

  describe '#response' do
    subject { rubygems.response(dummy_package) }
    it { should be_a String }
  end

  describe '#parse_as' do
    subject { rubygems.parse_as('json', rubygems.response(dummy_package) ) }
    it { should be_a Hash }
  end
end