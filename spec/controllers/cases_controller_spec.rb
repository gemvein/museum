require 'rails_helper'

describe Museum::CasesController do
  include_context 'loupe support'
  include_context 'case support'
  routes { Museum::Engine.routes }

  describe 'GET index' do
    before(:each) { get :index }
    it_should_behave_like 'a successful page', which_renders: :index
  end
  describe 'GET show' do
    context 'with an invalid gem name' do
      before(:each) { get :show, id: 'bad' }
      it_should_behave_like 'a 404 Not Found error'
    end
    context 'with a valid gem name' do
      before(:each) { get :show, id: 'bootswitch' }
      it_should_behave_like 'a successful page', which_renders: :show
    end
  end
  describe 'GET refresh' do
    context 'with an invalid gem name' do
      before(:each) { get :refresh, id: 'bad' }
      it_should_behave_like 'a 404 Not Found error'
    end
    context 'with a valid gem name' do
      before(:each) { get :refresh, id: 'bootswitch' }
      it_should_behave_like 'a redirect with a message', '/museum/cases/bootswitch', notice: 'Case was successfully refreshed.'
    end
  end
end