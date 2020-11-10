# frozen_string_literal: true

FactoryBot.define do
  factory :gameweek do
    position { 0 }
    deadline_at { DateTime.now + 10.days }
    championship
  end
end
