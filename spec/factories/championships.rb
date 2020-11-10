# frozen_string_literal: true

FactoryBot.define do
  factory :championship do
    name {
      {
        en: 'Russian Premier League',
        ru: 'Российская Премьер-Лига'
      }
    }
  end
end
