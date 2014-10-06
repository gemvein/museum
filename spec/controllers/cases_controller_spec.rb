require 'spec_helper'

describe Museum::CasesController do
  include_context 'loupe support'
  include_context 'case support'

  describe 'GET index' do
    before(:each) { get :index, { use_route: 'museum' } }
    it { should respond_with(:success) }
    it { should render_template(:index) }
  end
  describe 'GET show' do
    context 'with an invalid gem name' do
      before(:each) { get :show, { use_route: 'museum', id: 'bad' } }
      it { should respond_with(:not_found) }
    end
    context 'with a valid gem name' do
      before(:each) { get :show, { use_route: 'museum', id: 'bootswitch' } }
      it { should respond_with(:success) }
      it { should render_template(:show) }
    end
  end
  describe 'GET refresh' do
    context 'with an invalid gem name' do
      before(:each) { get :refresh, { use_route: 'museum', id: 'bad' } }
      it { should respond_with(:not_found) }
    end
    context 'with a valid gem name' do
      before(:each) { get :refresh, { use_route: 'museum', id: 'bootswitch' } }
      it { should respond_with(:redirect) }
      it { should set_the_flash }
    end
  end
end