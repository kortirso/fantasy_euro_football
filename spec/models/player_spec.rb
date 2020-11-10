# frozen_string_literal: true

describe Player, type: :model do
  it 'factory should be valid' do
    player = build :player

    expect(player).to be_valid
  end
end
