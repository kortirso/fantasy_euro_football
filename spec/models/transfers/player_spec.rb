# frozen_string_literal: true

describe Transfers::Player, type: :model do
  it 'factory should be valid' do
    transfers_player = build :transfers_player

    expect(transfers_player).to be_valid
  end
end
