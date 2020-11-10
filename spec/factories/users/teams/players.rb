# frozen_string_literal: true

FactoryBot.define do
  factory :users_teams_player, class: '::Users::Teams::Player' do
    association :users_team, factory: :users_team
    association :player, factory: :player
  end
end
