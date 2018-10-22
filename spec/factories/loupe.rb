# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryBot.define do
  factory :loupe, class: Museum::Loupe do
    title { 'RubyGems' }
    data_format { 'json' }
  end
end
