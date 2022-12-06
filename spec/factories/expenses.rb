FactoryBot.define do
  factory :expense do
    association :user
    association :category
    name {"SomeExpense"}
    sum { 100.0 }
    description {"SomeDescription"}
  end
end
