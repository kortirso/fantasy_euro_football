# frozen_string_literal: true

describe Lineups::Player, type: :model do
  it 'factory should be valid' do
    lineups_player = build :lineups_player

    expect(lineups_player).to be_valid
  end
end
