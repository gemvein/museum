require 'spec_helper'

describe 'museum/cases/index' do
  include_context 'loupe support'
  include_context 'case support'
  it 'displays a list of gems' do
    assign(:cases, Museum::Case.all)
    render template: 'museum/cases/index'
    rendered.should match dummy_package.name
    rendered.should match next_package.name
    rendered.should match last_package.name
  end
end