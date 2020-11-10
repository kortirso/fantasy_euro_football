# frozen_string_literal: true

FactoryBot.define do
  factory :team do
    name {
      {
        en: 'Zenit',
        ru: 'Зенит'
      }
    }
    championship
  end
end
