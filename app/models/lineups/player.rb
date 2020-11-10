# frozen_string_literal: true

module Lineups
  class Player < ApplicationRecord
    self.table_name = :lineups_players

    belongs_to :lineup
    belongs_to :player
  end
end
