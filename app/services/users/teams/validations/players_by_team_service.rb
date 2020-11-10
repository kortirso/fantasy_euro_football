# frozen_string_literal: true

module Users
  module Teams
    module Validations
      class PlayersByTeamService
        prepend BasicService

        def call(players:)
          team_ids_with_count = players.map(:team_id).tally
          team_ids_with_count.each do |team_id, count|
            if count > Users::Team::PLAYERS_LIMIT_BY_TEAM
              fail!("Too many players from #{Team[team_id].name['en']} team")
            end
          end
        end
      end
    end
  end
end
