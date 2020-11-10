# frozen_string_literal: true

FactoryBot.define do
  factory :lineup do
    points { 0 }
    association :users_team, factory: :users_team
    association :gameweek
  end
end
