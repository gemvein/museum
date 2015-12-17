require 'rails_helper'
RSpec.feature 'Boxes' do
  include_context 'case support'
  include_context 'loupe support'

  describe 'Index' do
    before do
      visit '/museum/cases'
    end

    describe "displays a list of cases" do
      subject { page }
      it { should have_css("h2", minimum: 4) }
    end
  end

  describe 'Show' do
    before do
      visit '/museum/cases/bootswitch'
    end

    describe "displays a cases" do
      subject { page }
      it { should have_css("h1", text: 'Bootswitch') }
      it { should have_css("h3", text: 'RubyGems') }
      it { should have_css("h3", text: 'GitHub') }
    end
  end
end
