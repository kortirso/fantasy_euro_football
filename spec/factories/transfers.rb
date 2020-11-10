# frozen_string_literal: true

FactoryBot.define do
  factory :transfer do
    association :users_team, factory: :users_team
    association :gameweek
  end
end
