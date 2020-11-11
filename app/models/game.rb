# frozen_string_literal: true

class Game < ApplicationRecord
  belongs_to :gameweek

  has_many :games_teams, class_name: 'Games::Team', dependent: :destroy
  has_many :teams, through: :games_teams

  delegate :championship, to: :gameweek
end
