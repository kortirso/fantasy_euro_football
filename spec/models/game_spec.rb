# frozen_string_literal: true

describe Game, type: :model do
  it 'factory should be valid' do
    game = build :game

    expect(game).to be_valid
  end
end
