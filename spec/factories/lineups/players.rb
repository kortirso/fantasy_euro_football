# frozen_string_literal: true

FactoryBot.define do
  factory :lineups_player, class: 'Lineups::Player' do
    starter { true }
    order { 0 }
    association :lineup
    association :player
  end
end
