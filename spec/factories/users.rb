# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |i| "user#{i}@gmail.com" }
    password_digest { 'user1234qwEZ' }
  end
end
