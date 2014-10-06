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
end