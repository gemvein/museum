require 'spec_helper'

describe Museum::CaseDetail do
  include_context 'loupe support'
  include_context 'case support'

  it { should validate_presence_of(:key) }
  it { should validate_presence_of(:case) }
  it { should validate_presence_of(:loupe) }
  it { should belong_to(:case) }
  it { should belong_to(:loupe) }

  describe '#update_or_create_by' do
    subject {
      args = { loupe: rubygems, case: dummy_package, key: 'name'}
      attributes = { value: 'test' }
      Museum::CaseDetail.update_or_create_by(args, attributes)
      Museum::CaseDetail.find_by(args)
    }
    its([:value]) { should == 'test' }
  end

  describe '#find_all_by_loupe_slug' do
    subject { Museum::CaseDetail.find_all_by_loupe_slug('rubygems') }
    it { should have_at_least(2).items }
  end

  describe '#detail' do
    subject { fresh_package.loupe('rubygems').detail('name') }
    it { should == "bootstrap_pager" }
  end
end