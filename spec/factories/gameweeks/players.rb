# frozen_string_literal: true

FactoryBot.define do
  factory :gameweeks_player, class: 'Gameweeks::Player' do
    points { 0 }
    association :gameweek
    association :player
  end
end
