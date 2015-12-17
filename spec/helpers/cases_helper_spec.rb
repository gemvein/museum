require 'rails_helper'

describe Museum::CasesHelper do
  include_context 'loupe support'
  include_context 'case support'
  describe '#cases_widget' do
    subject { helper.cases_widget }
    it { should be_a String }
    it { should match 'bootswitch' }
  end
end