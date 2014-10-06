require 'spec_helper'

describe 'museum/cases/show' do
  include_context 'loupe support'
  include_context 'case support'

  before do
  	assign(:case, fresh_package)
    allow(view).to receive(:case).and_return(true)
  end
  
  it 'displays a gem' do
    assigns[:case] = fresh_package
    render template: 'museum/cases/show'
    rendered.should match 'bootstrap_pager'
  end
  
end