require 'rails_helper'

describe Museum::Case do
  include_context 'loupe support'
  include_context 'case support'

  it { should validate_presence_of(:name) }
  it { should have_many(:case_details) }

  describe '#freshen_if_expired' do
    subject { expired_package.freshen_if_expired }
    its(:updated_at) { should be > (Time.now - Museum.configuration.refresh_interval) }
  end

  describe '#expired?' do
    describe 'on an expired package' do
      subject { expired_package.expired? }
      it { should be true }
    end
    describe 'on a fresh package' do
      subject { fresh_package.expired? }
      it { should be false }
    end
  end

  describe '#freshen' do
    subject do
      {
          old_value: dummy_package.updated_at.to_datetime,
          new_value: sleep(10) && dummy_package.freshen.updated_at.to_datetime
      }
    end
    its([:new_value]) { should be > subject[:old_value] }
  end

  describe '#loupe' do
    subject { fresh_package.loupe('rubygems').count }
    it { should be > 2 }
  end

  describe '#to_param' do
    subject { dummy_package.to_param }
    it { should be_a String }
  end
end