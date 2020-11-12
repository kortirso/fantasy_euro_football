# frozen_string_literal: true

class Team < ApplicationRecord
  belongs_to :championship

  has_many :players, dependent: :nullify
  has_many :games_teams, class_name: 'Games::Team', dependent: :destroy
  has_many :games, through: :games_teams
end
