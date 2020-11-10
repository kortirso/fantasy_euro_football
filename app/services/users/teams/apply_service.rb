# frozen_string_literal: true

module Users
  module Teams
    class ApplyService
      prepend BasicService

      def initialize(
        players_by_position_validation_service: Validations::PlayersByPositionService,
        players_by_team_validation_service:     Validations::PlayersByTeamService
      )
        @players_by_position_validation_service = players_by_position_validation_service
        @players_by_team_validation_service     = players_by_team_validation_service
      end

      def call(users_team:)
        @users_team = users_team
        @players    = users_team.players

        validate_players_by_position
        validate_players_by_team
        validate_players_price
        apply_team if success?
      end

      private

      def validate_players_by_position
        validation = @players_by_position_validation_service.call(players: @players)
        validation.errors.each(&method(:fail!))
      end

      def validate_players_by_team
        validation = @players_by_team_validation_service.call(players: @players)
        validation.errors.each(&method(:fail!))
      end

      def validate_players_price
        return if @players.map(:price_cents).sum <= @users_team.bank_value_cents

        fail!('You do not have so much money for these players')
      end

      def apply_team
        @users_team.update(completed: true)
      end
    end
  end
end
