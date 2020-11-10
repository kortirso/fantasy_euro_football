# frozen_string_literal: true

class Transfer < ApplicationRecord
  belongs_to :users_team, class_name: 'Users::Team'
  belongs_to :gameweek

  has_many :transfers_players, dependent: :destroy
  has_many :players, through: :transfers_players
end
