require 'spec_helper'

describe 'museum/cases/index' do
  include_context 'loupe support'
  include_context 'case support'
  before do
  	assign(:cases, Museum::Case.all)
    allow(view).to receive(:cases).and_return(true)
  end
  
  it 'displays a list of gems' do
  	render
    expect(rendered).to match dummy_package.name
    expect(rendered).to match next_package.name
    expect(rendered).to match last_package.name
  end

end