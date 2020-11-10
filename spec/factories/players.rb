# frozen_string_literal: true

FactoryBot.define do
  factory :player do
    name {
      {
        en: 'Artyom Dzyuba',
        ru: 'Артём Дзюба'
      }
    }
    position { :forward }
    team
  end
end
