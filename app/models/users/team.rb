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

    has_many :users_teams_players, dependent: :destroy
    has_many :players, through: :users_teams_players
    has_many :lineups, dependent: :destroy
    has_many :transfers, dependent: :destroy
  end
end
