# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :team, optional: true

  has_many :users_teams_players, dependent: :destroy
  has_many :users_teams, through: :users_teams_players

  has_many :lineups_players, dependent: :destroy
  has_many :lineups, through: :lineups_players

  has_many :gameweeks_players, dependent: :destroy

  has_many :transfers_players, dependent: :destroy
  has_many :transfers, through: :transfers_players

  enum position: { goalkeeper: 0, defender: 1, midfielder: 2, forward: 3 }

  delegate :championship, to: :team
end
