# frozen_string_literal: true

class User < ApplicationRecord
  has_many :users_teams, dependent: :destroy
end
