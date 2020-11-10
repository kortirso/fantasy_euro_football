# frozen_string_literal: true

class Game < ApplicationRecord
  belongs_to :gameweek

  has_many :games_teams, dependent: :destroy
  has_many :teams, through: :games_teams

  delegate :championship, to: :gameweek
end
