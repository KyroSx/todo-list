require_relative '../../helpers/random_data'

FactoryBot.define do
  factory :todo, class: Todo do
    title { RandomData.complete_name }
    completed { RandomData.boolean }
    details { RandomData.text }
  end
end
