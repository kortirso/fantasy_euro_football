# frozen_string_literal: true

module Users
  class Team < ApplicationRecord
    self.table_name = :users_teams

    PLAYERS_LIMIT_BY_POSITIONS = {
      0 => 2,
      1 => 5,
      2 => 5,
      3 => 3
    }.freeze
    PLAYERS_LIMIT_BY_TEAM = 3

    belongs_to :user
    belongs_to :championship

    has_many :users_teams_players,
             class_name:  'Users::Teams::Player',
             foreign_key: :users_team_id,
             inverse_of:  :users_team,
             dependent:   :destroy

    has_many :players, through: :users_teams_players
    has_many :lineups, foreign_key: :users_team_id, inverse_of: :users_team, dependent: :destroy
    has_many :transfers, foreign_key: :users_team_id, inverse_of: :users_team, dependent: :destroy
  end
end
