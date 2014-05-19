require 'spec_helper'

describe 'museum/cases/show' do
  include_context 'loupe support'
  include_context 'case support'
  it 'displays a gem' do
    assign(:case, fresh_package)
    render template: 'museum/cases/show'
    rendered.should match 'bootstrap_pager'
  end
end