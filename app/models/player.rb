# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :team, optional: true

  has_many :users_teams_players, class_name: 'Users::Teams::Player', dependent: :destroy
  has_many :users_teams, class_name: 'Users::Team', through: :users_teams_players

  has_many :lineups_players, class_name: 'Lineups::Player', dependent: :destroy
  has_many :lineups, through: :lineups_players

  has_many :gameweeks_players, class_name: 'Gameweeks::Player', dependent: :destroy

  has_many :transfers_players, class_name: 'Transfers::Player', dependent: :destroy
  has_many :transfers, through: :transfers_players

  enum position: { goalkeeper: 0, defender: 1, midfielder: 2, forward: 3 }

  delegate :championship, to: :team
end
