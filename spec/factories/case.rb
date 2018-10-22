# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryBot.define do
  factory :case, class: Museum::Case do
    name { 'bootswitch' }
  end
end
