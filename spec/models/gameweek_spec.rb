# frozen_string_literal: true

describe Gameweek, type: :model do
  it 'factory should be valid' do
    gameweek = build :gameweek

    expect(gameweek).to be_valid
  end
end
