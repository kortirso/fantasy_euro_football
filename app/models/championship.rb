# frozen_string_literal: true

class Championship < ApplicationRecord
  has_many :users_teams, dependent: :destroy

  has_many :teams, dependent: :destroy
  has_many :players, through: :teams

  has_many :gameweeks, dependent: :destroy
  has_many :games, through: :gameweeks
end
