# frozen_string_literal: true

describe Gameweeks::Player, type: :model do
  it 'factory should be valid' do
    gameweeks_player = build :gameweeks_player

    expect(gameweeks_player).to be_valid
  end
end
