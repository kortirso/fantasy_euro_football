# frozen_string_literal: true

module Lineups
  class InitiateService
    prepend BasicService

    def call(users_team:)
      @users_team = users_team

      create_lineup
    end

    private

    def create_lineup
      Lineup.create(users_team: @users_team, gameweek: @users_team.championship.gameweeks.first)
    end
  end
end
