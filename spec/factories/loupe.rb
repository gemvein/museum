# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :loupe, class: Museum::Loupe do
    title 'RubyGems'
    data_format 'json'
  end
end
