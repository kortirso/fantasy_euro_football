# frozen_string_literal: true

class Lineup < ApplicationRecord
  belongs_to :users_team, class_name: 'Users::Team'
  belongs_to :gameweek

  has_many :lineups_players, dependent: :destroy
  has_many :players, through: :lineups_players
end
