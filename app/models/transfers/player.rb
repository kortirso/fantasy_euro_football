# frozen_string_literal: true

module Transfers
  class Player < ApplicationRecord
    self.table_name = :transfers_players

    belongs_to :transfer
    belongs_to :player
  end
end
