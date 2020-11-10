# frozen_string_literal: true

module Users
  module Teams
    class Player < ApplicationRecord
      self.table_name = :users_teams_players

      belongs_to :users_team, class_name: 'Users::Team'
      belongs_to :player
    end
  end
end
