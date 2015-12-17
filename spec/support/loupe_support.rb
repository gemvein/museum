shared_context 'loupe support' do
  let!(:rubygems) { Museum::Loupe.find_by_title('RubyGems') }
  let!(:github) { Museum::Loupe.find_by_title('GitHub') }
end