# frozen_string_literal: true

FactoryBot.define do
  factory :transfers_player, class: 'Transfers::Player' do
    income { true }
    association :transfer
    association :player
  end
end
