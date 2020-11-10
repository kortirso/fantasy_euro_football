# frozen_string_literal: true

module Users
  module Teams
    module Validations
      class PlayersByPositionService
        prepend BasicService

        def call(players:)
          Users::Team::PLAYERS_LIMIT_BY_POSITIONS.each do |position, limit|
            if players.where(position: position).count != limit
              fail!("Invalid players amount at #{position} position")
            end
          end
        end
      end
    end
  end
end
