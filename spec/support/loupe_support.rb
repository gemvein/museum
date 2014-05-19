shared_context 'loupe support' do
  let!(:rubygems) { FactoryGirl.create(:loupe, :title => 'RubyGems', :uri_template => 'http://www.rubygems.org/api/v1/gems/%{name}.json') }
  let!(:github) { FactoryGirl.create(:loupe, :title => 'GitHub', :uri_template => 'https://api.github.com/repos/%{user}/%{name}') }
end