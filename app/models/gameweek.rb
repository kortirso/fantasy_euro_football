# frozen_string_literal: true

class Gameweek < ApplicationRecord
  belongs_to :championship

  has_many :games, dependent: :destroy
  has_many :lineups, dependent: :destroy
  has_many :gameweeks_players, dependent: :destroy
  has_many :transfers, dependent: :destroy
end
