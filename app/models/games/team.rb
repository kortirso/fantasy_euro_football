# frozen_string_literal: true

module Games
  class Team < ApplicationRecord
    self.table_name = :games_teams

    belongs_to :game
    belongs_to :team
  end
end
