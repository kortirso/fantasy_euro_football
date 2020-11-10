# frozen_string_literal: true

FactoryBot.define do
  factory :games_team, class: 'Games::Team' do
    home_team { true }
    association :game
    association :team
  end
end
