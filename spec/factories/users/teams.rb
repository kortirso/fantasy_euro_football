# frozen_string_literal: true

FactoryBot.define do
  factory :users_team, class: '::Users::Team' do
    name { 'User United' }
    association :user
    association :championship
  end
end
