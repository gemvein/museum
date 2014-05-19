require 'spec_helper'

describe Museum::CasesController do
  routes { Museum::Engine.routes }
  include_context 'loupe support'
  include_context 'case support'

  describe 'Routing' do
    it { should route(:get, '/').to(:action => 'index') }
    it { should route(:get, '/cases/bootswitch').to(:action => 'show', :id => 'bootswitch') }
    it { should route(:get, '/cases/bootswitch/refresh').to(:action => 'refresh', :id => 'bootswitch') }
  end

  describe 'GET index' do
    before(:each) { get :index }
    it { should respond_with(:success) }
    it { should render_template(:index) }
  end
  describe 'GET show' do
    context 'with an invalid gem name' do
      before(:each) { get :show, { id: 'bad' } }
      it { should respond_with(:not_found) }
    end
    context 'with a valid gem name' do
      before(:each) { get :show, { id: 'bootswitch' } }
      it { should respond_with(:success) }
      it { should render_template(:show) }
    end
  end
  describe 'GET refresh' do
    context 'with an invalid gem name' do
      before(:each) { get :refresh, { id: 'bad' } }
      it { should respond_with(:not_found) }
    end
    context 'with a valid gem name' do
      before(:each) { get :refresh, { id: 'bootswitch' } }
      it { should respond_with(:redirect) }
      it { should set_the_flash }
    end
  end
end