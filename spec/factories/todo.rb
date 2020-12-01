# frozen_string_literal: true

require_relative '../../helpers/random_data'

FactoryBot.define do
  factory :todo do
    title { RandomData.complete_name }
    completed { RandomData.boolean }
    details { RandomData.text }
  end
end
