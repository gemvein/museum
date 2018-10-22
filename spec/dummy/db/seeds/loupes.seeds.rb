FactoryBot.create(:loupe,
                   title: 'RubyGems',
                   uri_template: 'https://www.rubygems.org/api/v1/gems/%{name}.json',
                   data_format: 'json'
)
FactoryBot.create(:loupe,
                   title: 'GitHub',
                   uri_template: 'https://api.github.com/repos/%{user}/%{name}',
                   data_format: 'json'
)
FactoryBot.create(:loupe,
                   title: 'GitHub README',
                   uri_template: 'https://api.github.com/repos/%{user}/%{name}/readme',
                   data_format: 'json'
)