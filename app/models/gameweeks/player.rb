# frozen_string_literal: true

module Gameweeks
  class Player < ApplicationRecord
    self.table_name = :gameweeks_players

    belongs_to :gameweek
    belongs_to :player
  end
end
